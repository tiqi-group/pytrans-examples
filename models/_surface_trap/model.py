#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Created: 01-2021 - Carmelo Mordini <carmelo> <cmordini@phys.ethz.ch>

import numpy as np
from pytrans.electrode import DCElectrode, RFElectrode
from pytrans.abstract_model import AbstractTrapModel
from .interp import TricubicScalarInterpolator1, interpolators

import logging
logger = logging.getLogger(__name__)

_DC_ELECTRODES = [
    "DCintop", "DCinbot",
    "DCtop1", "DCtop2", "DCtop3", "DCtop4", "DCtop5",
    "DCbot1", "DCbot2", "DCbot3", "DCbot4", "DCbot5",
]


class SurfaceTrapDCElectrode(DCElectrode):

    def __init__(self, interp_name):
        self._interp: TricubicScalarInterpolator1 = interpolators[interp_name]
        super().__init__()

    def _unit_potential(self, x, y, z):
        return self._interp(x, y, z, d=0)

    def _unit_gradient(self, x, y, z):
        return self._interp(x, y, z, d=1)

    def _unit_hessian(self, x, y, z):
        return self._interp(x, y, z, d=2)


class SurfaceTrapRFElectrode(RFElectrode):

    def __init__(self):
        self._interp: TricubicScalarInterpolator1 = interpolators['pseudo_potential_1V1MHz1amu']
        super().__init__()

    def _unit_potential(self, x, y, z):
        return self._interp(x, y, z, d=0)

    def _unit_gradient(self, x, y, z):
        return self._interp(x, y, z, d=1)

    def _unit_hessian(self, x, y, z):
        return self._interp(x, y, z, d=2)


class SurfaceTrap(AbstractTrapModel):

    _dc_electrodes = {name: SurfaceTrapDCElectrode(name) for name in _DC_ELECTRODES}
    _rf_electrodes = {"RF": SurfaceTrapRFElectrode()}
    _rf_voltage = 40
    _rf_freq_mhz = 20

    # Extra attributes and methodes to enrich the model
    w_ele = 165e-6
    x = np.arange(-600, 601, 0.5) * 1e-6
    y0 = 0.0
    z0 = 7e-5
    dt = 392e-9

    @classmethod
    def x_ele(cls, j):
        # center position of electrode j
        # j = 1 .. 5
        return cls.w_ele * (j - 3)
