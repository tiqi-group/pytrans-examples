#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Created: 01-2021 - Carmelo Mordini <carmelo> <cmordini@phys.ethz.ch>

import numpy as np
from pytrans.abstract_model import AbstractTrap
from . import interp
from pytrans.ions import Ion, Ca40, atomic_mass

import logging
logger = logging.getLogger(__name__)


class SurfaceTrap(AbstractTrap):
    """Simple model of a surface trap with tricubic interpolation model
    """
    _electrodes = [
        "DCintop", "DCinbot",
        "DCtop1", "DCtop2", "DCtop3", "DCtop4", "DCtop5",
        "DCbot1", "DCbot2", "DCbot3", "DCbot4", "DCbot5",
    ]

    v_rf = 40.0
    rf_freq = 20
    omega_rf = 2 * np.pi * rf_freq * 1e6

    w_ele = 165e-6
    y0 = 0.0
    z0 = 7e-5
    dt = 392e-9

    ion = Ca40

    def __init__(self, electrodes=None):
        super().__init__(electrodes)
        self.x = np.arange(-600, 601, 0.5) * 1e-6

    def electrode_moment(self, name, x, y, z, d=0):
        return interp.interpolators[name](x, y, z, d)

    def dc_potentials(self, x, y, z):
        return np.stack([self.electrode_moment(name, x, y, z, d=0) for name in self.electrodes], axis=0)

    def dc_gradients(self, x, y, z):
        return np.stack([self.electrode_moment(name, x, y, z, d=1) for name in self.electrodes], axis=0)

    def dc_hessians(self, x, y, z):
        return np.stack([self.electrode_moment(name, x, y, z, d=2) for name in self.electrodes], axis=0)

    def pseudo_potential(self, x, y, z, ion: Ion = Ca40):
        field = self.electrode_moment("pseudo_potential_1V1MHz1amu", x, y, z, d=0)
        return field * self.v_rf**2 / (ion.mass / atomic_mass) / self.rf_freq**2

    def pseudo_gradient(self, x, y, z, ion: Ion = Ca40):
        field = self.electrode_moment("pseudo_potential_1V1MHz1amu", x, y, z, d=1)
        return field * self.v_rf**2 / (ion.mass / atomic_mass) / self.rf_freq**2

    def pseudo_hessian(self, x, y, z, ion: Ion = Ca40):
        field = self.electrode_moment("pseudo_potential_1V1MHz1amu", x, y, z, d=2)
        return field * self.v_rf**2 / (ion.mass / atomic_mass) / self.rf_freq**2

    @classmethod
    def x_ele(cls, j):
        # center position of electrode j
        # j = 1 .. 5
        return cls.w_ele * (j - 3)
