#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 03/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


import pytest
import numpy as np
from nptyping import NDArray
from models.surface_trap import SurfaceTrap


@pytest.fixture(scope="session")
def trap() -> SurfaceTrap:
    return SurfaceTrap()


@pytest.fixture
def voltages_e2() -> NDArray:
    """Set of voltages trapping over electrodes DC{top,bot}2 in SurfaceTrap
    """
    # return np.asarray([-1.03680679, 0.19411571, 2.10824776, -3.40701046, 1.88571987,
    #                    0.73699269, -0.12520335, 0.91544312, -5.0391288, 0.59976997,
    #                    0.60904511, 0.12365927])
    return np.asarray([-1.11676166, 0.12324608, 1.7292539, -3.34571531, 1.39550148,
                       0.84148552, 0.28586969, 0.86895001, -5.28606788, 0.53520224,
                       0.62378998, 0.21304995])
