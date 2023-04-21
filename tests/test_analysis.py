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
    res = analyse_potential(trap, voltages_e2, ions=Ca40, r0=r0, find_3dmin=True,
                            minimize_options=dict(accuracy=1e-12))

    true_r1 = np.asarray([-164.99, 0.0235, 69.78]) * 1e-6
    assert np.allclose(res.x_eq, true_r1, atol=1e-7, rtol=1e-2)
    assert np.abs(np.linalg.norm(res.shift)) < 1e-7
