#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 02/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


import numpy as np

import concurrent.futures
from pytrans.ions import Ca40, atomic_mass
from models.cryo_sw.data.analytic import potentialsDC, pseudoPotential

z0 = 5.16792281e-05

dx = 5
x = np.arange(-610, 610 + dx, dx) * 1e-6

dz = 2
y = np.arange(-60, 60 + dz, dz) * 1e-6
z = np.arange(15, 90 + dz, dz) * 1e-6

X, Y, Z = list(map(np.ravel, np.meshgrid(x, y, z, indexing='ij')))
print(f"n points: {len(X)}")


def electrode_moment(name, x, y, z):
    return getattr(potentialsDC, name)(x, y, z)


def pseudo_potential_unit(x, y, z):
    return pseudoPotential.ps0(x, y, z, 1, 2 * np.pi * 1e6) * (Ca40.mass / atomic_mass)


electrodes = [f"E{j}" for j in range(1, 21)]

data = {
    "X": X, "Y": Y, "Z": Z
}


with concurrent.futures.ProcessPoolExecutor() as executor:

    def _moment(name):
        return electrode_moment(name, X, Y, Z)

    for name, v in zip(electrodes, executor.map(_moment, electrodes)):
        print(f"Electrode {name} done")
        data[name] = v


# for name in tqdm(electrodes):
#     v = electrode_moment(name, X, Y, Z)
#     data[name] = np.stack([X, Y, Z, v], axis=1)


ps = pseudo_potential_unit(X, Y, Z)
data['pseudo_potential_1V1MHz1amu'] = ps

print('saving')

np.savez('surface_trap_data', **data)

print('done')
