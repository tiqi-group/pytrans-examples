#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 02/2022
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

import numpy as np
from .conftest import SurfaceTrap
from pytrans.ions import Ca40
from nptyping import NDArray, Shape, Float, assert_isinstance


def test_electrode_to_index(trap: SurfaceTrap):
    assert trap.electrode_to_index(['DCintop', 'DCtop2']) == [0, 3]
    assert trap.electrode_to_index('DCinbot') == 1


def test_model_output_shapes(trap: SurfaceTrap, voltages_e2: NDArray):
    x = np.linspace(-20, 20, 10) * 1e-6
    v = trap.dc_hessians(x, 0, 0)
    assert_isinstance(v, NDArray[Shape["12, 10, 3, 3"], Float])

    v = trap.pseudo_hessian(x, 0, 0, Ca40.mass_amu)
    assert_isinstance(v, NDArray[Shape["10, 3, 3"], Float])

    v = trap.hessian(voltages_e2, x, 0, 0, Ca40.mass_amu)
    assert_isinstance(v, NDArray[Shape["10, 3, 3"], Float])
