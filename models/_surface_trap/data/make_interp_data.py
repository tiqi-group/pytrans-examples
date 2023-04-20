#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 02/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


import matplotlib.pyplot as plt
import numpy as np

from pytrans.ions import atomic_mass
from analytic import potentialsDC, pseudoPotential

save_moments = True
plot = True

dx = 5
x = np.arange(-610, 610 + dx, dx) * 1e-6

dz = 2
y = np.arange(-60, 60 + dz, dz) * 1e-6
z = np.arange(10, 120 + dz, dz) * 1e-6

X, Y, Z = list(map(np.ravel, np.meshgrid(x, y, z, indexing='ij')))
print(f"n points: {len(X)}")


def electrode_moment(name, x, y, z):
    return getattr(potentialsDC, name)(x, y, z)


def pseudo_potential_unit(x, y, z):
    return pseudoPotential.ps0(x, y, z, atomic_mass, 1, 2 * np.pi * 1e6)


electrodes = \
    ["DCintop", "DCinbot"] + \
    [f"DCtop{j}" for j in range(1, 6)] + \
    [f"DCbot{j}" for j in range(1, 6)]

data = {
    "X": X, "Y": Y, "Z": Z
}

if save_moments:
    # import concurrent.futures
    # with concurrent.futures.ProcessPoolExecutor() as executor:

    #     def _moment(name):
    #         return electrode_moment(name, X, Y, Z)

    #     for name, v in zip(electrodes, executor.map(_moment, electrodes)):
    #         print(f"Electrode {name} done")
    #         data[name] = v

    from tqdm import tqdm
    for name in tqdm(electrodes):
        v = electrode_moment(name, X, Y, Z)
        data[name] = v

    ps = pseudo_potential_unit(X, Y, Z)
    data['pseudo_potential_1V1MHz1amu'] = ps

    print('saving')

    np.savez('surface_trap_data', **data)

    print('done')

if plot:
    print("some plots")

    for j in range(1, 6):
        v = electrode_moment(f"DCtop{j}", x, 0, 70e-6)
        plt.plot(x * 1e6, v)

    yy, zz = np.meshgrid(y, z)
    ps = pseudo_potential_unit(0, yy, zz)

    plt.figure()
    plt.contour(yy, zz, ps, 200)

    z1 = np.linspace(40, 150, 100) * 1e-6
    ps1 = pseudo_potential_unit(0, 0, z1)
    plt.figure()
    plt.plot(z1 * 1e6, ps1)

    plt.show()
