#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 03/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

import numpy as np
from pytrans.conversion import freq_to_curv
from pytrans.ions import Ca40
from pytrans import objectives as obj
from pytrans.solver import solver

from .conftest import SurfaceTrap


def test_gen_e2_waveform(trap: SurfaceTrap, voltages_e2):
    freq = 1e6
    x0 = trap.x_ele(2)
    y0 = 0
    z0 = 70e-6

    curv = freq_to_curv(freq, ion=Ca40)

    # len(step_opjectives) == number of steps == number of samples in the final waveform
    # each element is a list of minimization objectives for that step
    step_objectives = [
        [
            obj.GradientObjective(x0, y0, z0, pseudo=False, value=0),
            obj.HessianObjective(x0, y0, z0, pseudo=False, value=curv, entries='xx'),
            obj.HessianObjective(x0, y0, z0, pseudo=False, value=5e7, entries='yz'),
        ]
    ]

    global_objectives = [
        obj.VoltageObjective(10, constraint_type='<='),
        obj.VoltageObjective(-10, constraint_type='>=')
    ]

    # extra_constraints = [
    #     offset >= -0.3
    # ]
    extra_constraints = None
    waveform, final_costs = solver(trap, step_objectives, global_objectives, extra_constraints, verbose=False)

    voltages = waveform.value[0]  # let's just take the one sample
    assert np.allclose(voltages, voltages_e2, rtol=1e-5)
