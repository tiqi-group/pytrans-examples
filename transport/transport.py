#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 08/2021
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

'''
Module docstring
'''
import argparse
import numpy as np
import matplotlib.pyplot as plt

from pytrans.conversion import freq_to_curv
from pytrans.utils.linspace_functions import zpspace
from pytrans import objectives as obj
from pytrans.solver import solver

from pytrans.analysis import analyse_potential, analyse_fields_curvatures
from pytrans.plotting import animate_waveform, plot3d_make_layout

from models.cryo_sw import CryoTrap

savename = 'data_transport'


print("Loading trap model")
trap = CryoTrap()
print("done")
z0 = trap.z0
x_final = 375e-6
xx = zpspace(0, x_final, 256)  # [0.]

axial = 1.9
tilt = -5
curvature = freq_to_curv(axial * 1e6, ion=trap.ion)


parser = argparse.ArgumentParser()
parser.add_argument("--plot-only", action="store_true", default=False)
args = parser.parse_args()

if not args.plot_only:

    print("preparing objectives")
    step_objectives = [
        [
            obj.GradientObjective(_x, 0, z0, value=0),
            obj.HessianObjective(_x, 0, z0, value=curvature, entries='xx'),
            obj.HessianObjective(_x, 0, z0, value=0, entries=['xy', 'xz']),
            obj.HessianObjective(_x, 0, z0, value=1e8, entries=['yz'], constraint_type='>='),
            obj.HessianObjective(_x, 0, z0, value=0, entries=['yy', 'zz'], constraint_type='>='),
        ] for _x in xx
    ]

    print("done")

    global_objectives = [
        obj.SlewRateObjective(weight=1e6),
        obj.VoltageObjective(10, constraint_type='<='),
        obj.VoltageObjective(-10, constraint_type='>=')
    ]

    print("Running solver")
    waveform, final_costs = solver(trap, step_objectives, global_objectives, verbose=True)
    print("done")

    waveform = waveform.value
    np.save(savename, waveform)
else:
    waveform = np.load(f"{savename}.npy")


ss = slice(None, None, 5)
analyse_fields_curvatures(trap, waveform[ss], xx[ss], find_3dmin=True, title='waveform')

fig, (axes2, axes3) = plot3d_make_layout(2)
analyse_potential(trap, waveform[0], (xx[0], 0, z0), axes=axes2)
analyse_potential(trap, waveform[-1], (xx[-1], 0, z0), axes=axes3)

ani = animate_waveform(trap, waveform, trap.x, 0, z0)
ani._fig.suptitle = 'waveform'


plt.show()
