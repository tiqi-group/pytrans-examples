#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 06/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


import numpy as np
from pytrans import objectives as obj
from pytrans.conversion import freq_to_curv
from pytrans.ions import Ca40
from pytrans.functions import zpspace
from pytrans.solver import solver

from models.surface_trap import SurfaceTrap
from pathlib import Path


if __name__ == '__main__':

    _dir = Path(__file__).resolve().parent

    trap = SurfaceTrap()

    axial = freq_to_curv(1e6, ion=Ca40)
    rtilt = 8e7

    x = zpspace(trap.x_ele(2), trap.x_ele(4), 50)
    y0 = 0
    z0 = trap.z0

    # len(step_opjectives) == number of steps == number of samples in the final waveform
    # each element is a list of minimization objectives for that step
    step_objectives = [
        [
            obj.GradientObjective(x0, y0, z0, value=0, ion=Ca40),
            obj.HessianObjective(x0, y0, z0, entries='xx', value=axial, ion=Ca40, pseudo=False),
            obj.HessianObjective(x0, y0, z0, entries='yz', value=rtilt, ion=Ca40, pseudo=False),
            obj.VoltageObjective(0)
        ] for x0 in x
    ]

    global_objectives = [
        obj.VoltageObjective(10, constraint_type='<='),
        obj.VoltageObjective(-10, constraint_type='>='),
        # obj.SlewRateObjective(4e6, constraint_type='<=')  # V/s
        obj.SlewRateObjective(weight=1e4)
    ]

    # extra_constraints = [
    #     r2 >= freq_to_curv(2e6)
    # ]
    extra_constraints = None
    waveform, final_costs = solver(trap, step_objectives, global_objectives, extra_constraints, verbose=True)
    waveform = waveform.value  # get array from cvxpy variable
    print(waveform.shape, waveform[0])

    np.save(_dir / 'waveform', waveform)
