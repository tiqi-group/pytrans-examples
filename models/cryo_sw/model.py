#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Created: 01-2021 - Carmelo Mordini <carmelo> <cmordini@phys.ethz.ch>
"""
Cryo trap model

"""

import numpy as np

from pytrans.abstract_model import AbstractTrap
from pytrans import ions
from . import functions
# from .data.calculate_voltage import calculate_voltage
# from tools import wf_gen

import logging
logger = logging.getLogger(__name__)

# _x_default = np.arange(-1000, 1005, 5) * 1e-6
_x_default = np.arange(-600, 601, 0.5) * 1e-6


class CryoTrap(AbstractTrap):

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

    ion = ions.Ca40

    def __init__(self, electrodes=None, x=None):
        super().__init__(electrodes)
        self.x = _x_default if x is None else x
        self.norm = {
            'pot': 1.0,
            'grad': abs(functions.dc_gradients(["E6"], 0, 0, self.z0)[0, 2]),
            'hess': abs(functions.dc_hessians(["E6"], 0, 0, self.z0)[0, 0, 0]),
        }

    def dc_potentials(self, x, y, z):
        return functions.dc_potentials(self.electrodes, x, y, z)

    def dc_gradients(self, x, y, z):
        return functions.dc_gradients(self.electrodes, x, y, z)

    def dc_hessians(self, x, y, z):
        return functions.dc_hessians(self.electrodes, x, y, z)

    def dc_third_order(self, x, y, z):
        return functions.dc_third_order(self.electrodes, x, y, z)

    def dc_fourth_order(self, x, y, z):
        return functions.dc_fourth_order(self.electrodes, x, y, z)

    def pseudo_potential(self, x, y, z):
        return functions.pseudo_potential(x, y, z, self.v_rf, self.omega_rf)

    def pseudo_gradient(self, x, y, z):
        return functions.pseudo_gradient(x, y, z, self.v_rf, self.omega_rf)

    def pseudo_hessian(self, x, y, z):
        return functions.pseudo_hessian(x, y, z, self.v_rf, self.omega_rf)

    @property
    def moments(self):
        """ Common name for DC potentials at 1V
        This calculates them for all the electrodes along trap axis
        """
        return functions.dc_potentials(self._all_electrodes, self.x, 0, self.z0)

    # def from_static_params(self, axial, tilt, x_comp=0, y_comp=0, z_comp=0, center=6):  # , xCubic, vMesh, vGND, xyTilt=0, xzTilt=0):
    #     voltages = calculate_voltage(axial * 1e-6, tilt * 1e-6, x_comp, y_comp, z_comp, center)
    #     potential = voltages @ self.moments
    #     return voltages, potential

    # def generate_waveform(self, voltages, index, description='', generated=True, uid=None,
    #                       waveform_filename=None, verbose=False,
    #                       monitor_values=None):
    #     assert len(voltages.shape) == 2, "Voltages must be 2d (time, electrodes)"
    #     full_voltages = np.zeros((voltages.shape[0], len(self._all_electrodes) + 6))
    #     full_voltages[:, self.electrode_all_indices] = voltages
    #     if monitor_values is not None:
    #         full_voltages[:, -1] = monitor_values
    #     return wf_gen.generate_waveform(full_voltages / self.dc_gain, index, description, generated, uid,
    #                                     waveform_filename, verbose)

    # def read_waveform(self, filename, index):
    #     wf_d = wf_gen.load_waveforms(filename)
    #     key = f"wav{index:d}"
    #     voltages = wf_gen.wf_to_voltages(wf_d[key]['samples']) * self.dc_gain
    #     return voltages[:, self.electrode_all_indices]

    @classmethod
    def x_ele(cls, j):
        # center position of electrode j
        # j = 2 .. 10
        return cls.w_ele * (j - 6)
