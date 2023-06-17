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
from pytrans.solver import solver, init_waveform

from models.surface_trap import SurfaceTrap
from pathlib import Path


if __name__ == '__main__':

    _dir = Path(__file__).resolve().parent

    trap = SurfaceTrap()

    axial = freq_to_curv(1e6, ion=Ca40)
    rtilt = 8e7

    n_samples = 50
    x = zpspace(trap.x_ele(2), trap.x_ele(4), n_samples, k=5, gap=1.7)
    y0 = 0
    z0 = trap.z0

    waveform = init_waveform(n_samples, trap.n_electrodes)

    objectives = []

    # fill objectives per-step
    def step_objective(voltages, x):
        return [
            obj.GradientObjective(voltages, trap, x, y0, z0, value=0, ion=Ca40),
            obj.HessianObjective(voltages, trap, x, y0, z0, entries='xx', value=axial, ion=Ca40, pseudo=False),
            obj.HessianObjective(voltages, trap, x, y0, z0, entries='yz', value=rtilt, ion=Ca40, pseudo=False),
        ]

    for j, x0 in enumerate(x):
        objectives += step_objective(waveform[j], x0)

    objectives += [
        obj.VoltageObjective(waveform, 0),
        obj.VoltageObjective(waveform, 10, constraint_type='<='),
        obj.VoltageObjective(waveform, -10, constraint_type='>='),
        # obj.SlewRateObjective(4e6, constraint_type='<=')  # V/s
        obj.SlewRateObjective(waveform, dt=trap.dt, weight=1e4)
    ]

    _ = solver(objectives, verbose=True)
    waveform = waveform.value  # get array from cvxpy variable
    print(waveform.shape, waveform[0])

    np.save(_dir / 'waveform', waveform)
