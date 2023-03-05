#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 03/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

import numpy as np
from pytrans.ions import Ca40
from pytrans.analysis import analyse_potential

from .conftest import SurfaceTrap


def test_analyse_potential(trap: SurfaceTrap, voltages_e2):
    r0 = (trap.x_ele(2), 0, 70e-6)
    res = analyse_potential(trap, voltages_e2, ion=Ca40, r0=r0, find_3dmin=True)

    true_r1 = np.asarray([-1.64997678e+02, 2.35686706e-02, 6.97796418e+01]) * 1e-6
    assert np.allclose(res['r1'], true_r1, atol=1e-7, rtol=1e-2)
    assert np.abs(np.linalg.norm(res['shift'])) < 1e-7
