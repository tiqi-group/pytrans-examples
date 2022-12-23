#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Created: 01-2021 - Carmelo Mordini <carmelo> <cmordini@phys.ethz.ch>

import numpy as np
from pytrans.abstract_model import AbstractTrap
from . import functions

import logging
logger = logging.getLogger(__name__)


class SurfaceTrap(AbstractTrap):
    """Simple model of a surface trap using analytical moments
    """
    _electrodes = \
        ["DCintop", "DCinbot"] + \
        [f"DCtop{j}" for j in range(1, 6)] + \
        [f"DCbot{j}" for j in range(1, 6)]

    v_rf = 30  # 30 volt
    omega_rf = 2 * np.pi * 30e6  # 30 MHz

    def __init__(self, electrodes=None):
        super().__init__(electrodes)

    def dc_potentials(self, x, y, z):
        return functions.dc_potentials(self.electrodes, x, y, z)
