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
    """Simple model of a surface trap using analytical moments
    """
    _electrodes = [f"E{j}" for j in range(1, 21)]
    v_rf = 40.0
    omega_rf = 2 * np.pi * 34e6
    dc_gain = 2.5
    y0 = 0.0
    z0 = 5.16792281e-05
    dt = 392e-9

    # position of trap zones
    w_ele = 125e-6
    x_z1 = -375e-6  # x_ele(3)
    x_z2 = 0.0      # x_ele(6)
    x_z3 = 375e-6   # x_ele(9)

    ion = Ca40

    def __init__(self, electrodes=None):
        super().__init__(electrodes)
        self.x = np.arange(-600, 601, 0.5) * 1e-6

    def _ravel_coords(self, *args):
        args = np.broadcast_arrays(*args)
        shape = args[0].shape
        args = list(map(np.ravel, args))
        X = np.stack(args, axis=1).astype(float)
        return shape, X

    def electrode_moment(self, name, x, y, z, d=0):
        shape, X = self._ravel_coords(x, y, z)
        return interp.interpolators[name](X, d).reshape(shape + (d * (3,)))

    def dc_potentials(self, x, y, z):
        shape, X = self._ravel_coords(x, y, z)
        return np.stack([interp.interpolators[name](X).reshape(shape) for name in self.electrodes], axis=0)

    def dc_gradients(self, x, y, z):
        shape, X = self._ravel_coords(x, y, z)
        return np.stack([interp.interpolators[name](X, d=1).reshape(shape + (3,)) for name in self.electrodes], axis=0)

    def dc_hessians(self, x, y, z):
        shape, X = self._ravel_coords(x, y, z)
        return np.stack([interp.interpolators[name](X, d=2).reshape(shape + (3, 3)) for name in self.electrodes], axis=0)

    def pseudo_potential(self, x, y, z, ion: Ion = Ca40):
        shape, X = self._ravel_coords(x, y, z)
        field = interp.interpolators['pseudo_potential_1V1MHz1amu'](X).reshape(shape)
        return field * self.v_rf**2 / (ion.mass / atomic_mass) / self.rf_freq**2

    def pseudo_gradient(self, x, y, z, ion: Ion = Ca40):
        shape, X = self._ravel_coords(x, y, z)
        field = interp.interpolators['pseudo_potential_1V1MHz1amu'](X, d=1).reshape(shape + (3,))
        return field * self.v_rf**2 / (ion.mass / atomic_mass) / self.rf_freq**2

    def pseudo_hessian(self, x, y, z, ion: Ion = Ca40):
        shape, X = self._ravel_coords(x, y, z)
        field = interp.interpolators['pseudo_potential_1V1MHz1amu'](X, d=2).reshape(shape + (3, 3))
        return field * self.v_rf**2 / (ion.mass / atomic_mass) / self.rf_freq**2

    @classmethod
    def x_ele(cls, j):
        # center position of electrode j
        # j = 2 .. 10
        return cls.w_ele * (j - 6)
