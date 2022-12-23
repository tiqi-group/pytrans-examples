#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Created: 01-2021 - Carmelo Mordini <carmelo> <cmordini@phys.ethz.ch>

import numpy as np
from pytrans.abstract_model import AbstractTrap
from .loader import moment0, moment_ps

import logging
logger = logging.getLogger(__name__)


class InterpTrap(AbstractTrap):
    """Simple model of a surface trap using analytical moments
    """
    _electrodes = "E2 E5".split()
    v_rf = 30  # 30 volt
    omega_rf = 2 * np.pi * 30e6  # 30 MHz
    z0 = 5e-5  # RF null

    def __init__(self, use_electrodes=None):
        if isinstance(use_electrodes, list):
            for name in use_electrodes:
                if name not in self._all_electrodes:
                    raise AttributeError(f"Trap {self.__class__.__name__} has no electrode {name}")
            self._electrodes = use_electrodes

    def dc_potentials(self, x, y, z):
        return np.stack([moment0(x, y, z), moment0(x, -y, z)], axis=0)

    def pseudo_potential(self, x, y, z):
        return self.v_rf**2 / self.omega_rf**2 * moment_ps(x, y, z)

    # Let's leave them not implemented to keep the example minimal
    def dc_gradients(self, x, y, z):
        raise NotImplementedError

    def dc_hessians(self, x, y, z):
        raise NotImplementedError

    def pseudo_gradient(self, x, y, z):
        raise NotImplementedError

    def pseudo_hessian(self, x, y, z):
        raise NotImplementedError
