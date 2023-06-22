#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Created: 01-2021 - Carmelo Mordini <carmelo> <cmordini@phys.ethz.ch>

import numpy as np
from pytrans.abstract_model import AbstractTrapModel
from . import interp
from pytrans.ions import Ion, Ca40, atomic_mass

import logging
logger = logging.getLogger(__name__)


class Segtrap(AbstractTrapModel):
    """Simple model of a surface trap using analytical moments
    """
    _electrodes = [
        # DC electrodes, side a, 0-14
        'DCCa0', 'DCCa1', 'DCCa2', 'DCCa3', 'DCCa4', 'DCCa5', 'DCCa6', 'DCCa7',
        'DCCa8', 'DCCa9', 'DCCa10', 'DCCa11', 'DCCa12', 'DCCa13', 'DCCa14',
        # DC electrodes, side c, 0-14
        'DCCc0', 'DCCc1', 'DCCc2', 'DCCc3', 'DCCc4', 'DCCc5', 'DCCc6', 'DCCc7',
        'DCCc8', 'DCCc9', 'DCCc10', 'DCCc11', 'DCCc12', 'DCCc13', 'DCCc14',
        # Shim electrodes, sides a b c d, 1-5 per side
        # let's remove them for the moment
        # 'DCSa1', 'DCSa2', 'DCSa3', 'DCSa4', 'DCSa5',
        # 'DCSb1', 'DCSb2', 'DCSb3', 'DCSb4', 'DCSb5',
        # 'DCSc1', 'DCSc2', 'DCSc3', 'DCSc4', 'DCSc5',
        # 'DCSd1', 'DCSd2', 'DCSd3', 'DCSd4', 'DCSd5',
        # RF normalized - explicitly included in the pseudo_ functions
        # 'RF_pondpot_1V1MHz1amu'
    ]
    v_rf = 385.0
    rf_freq = 115.102
    omega_rf = 2 * np.pi * rf_freq * 1e6

    y0 = 0.0
    z0 = 0.0
    dt = 10e-9

    def __init__(self, electrodes=None):
        super().__init__(electrodes)
        self.x = np.linspace(interp.x_min, interp.x_max, 100)

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
        field = interp.interpolators['RF_pondpot_1V1MHz1amu'](X).reshape(shape)
        return field * self.v_rf**2 / (ion.mass / atomic_mass) / self.rf_freq**2

    def pseudo_gradient(self, x, y, z, ion: Ion = Ca40):
        shape, X = self._ravel_coords(x, y, z)
        field = interp.interpolators['RF_pondpot_1V1MHz1amu'](X, d=1).reshape(shape + (3,))
        return field * self.v_rf**2 / (ion.mass / atomic_mass) / self.rf_freq**2

    def pseudo_hessian(self, x, y, z, ion: Ion = Ca40):
        shape, X = self._ravel_coords(x, y, z)
        field = interp.interpolators['RF_pondpot_1V1MHz1amu'](X, d=2).reshape(shape + (3, 3))
        return field * self.v_rf**2 / (ion.mass / atomic_mass) / self.rf_freq**2
