#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 02/2022
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


import numpy as np
from pathlib import Path
from joblib import Memory
from .data.analytic import potentialsDC, gradientsDC, hessiansDC, third_order_axial_DC, fourth_order_axial_DC, pseudoPotential

location = Path(__file__).resolve().parent / '__pycache__'
memory = Memory(location, verbose=0)


@memory.cache
def dc_potentials(electrodes, x, y, z):
    """
    Returns:
        out: array_like, shape: (n_dc,) + x.shape
    """
    return np.stack([getattr(potentialsDC, name)(x, y, z) for name in electrodes], axis=0)


@memory.cache
def dc_gradients(electrodes, x, y, z):
    """
    Returns:
        out: array_like, shape: (n_dc, 3) + x.shape
    """
    return np.stack([getattr(gradientsDC, name)(x, y, z) for name in electrodes], axis=0)


@memory.cache
def dc_hessians(electrodes, x, y, z):
    """
    Returns:
        out: array_like, shape: (n_dc, 3, 3) + x.shape
    """
    return np.stack([getattr(hessiansDC, name)(x, y, z) for name in electrodes], axis=0)


@memory.cache
def dc_third_order(electrodes, x, y, z):
    """ Third order axial derivative (xxx)
    Returns
        out: array_like, shape: (n_dc,) + x.shape
    """
    return np.stack([getattr(third_order_axial_DC, name)(x, y, z) for name in electrodes], axis=0)


@memory.cache
def dc_fourth_order(electrodes, x, y, z):
    """ Fourth order axial derivative (xxxx)
    Returns
        out: array_like, shape: (n_dc,) + x.shape
    """
    return np.stack([getattr(fourth_order_axial_DC, name)(x, y, z) for name in electrodes], axis=0)


@memory.cache
def pseudo_potential(x, y, z, v_rf, omega_rf):
    """Pseudopotential from RF

    Returns:
        out: array_like, shape: x.shape
    """
    return pseudoPotential.ps0(x, y, z, v_rf, omega_rf)


@memory.cache
def pseudo_gradient(x, y, z, v_rf, omega_rf):
    """Pseudopotential gradient

    Returns:
        out: array_like, shape: (3,) + x.shape
    """
    return pseudoPotential.ps1(x, y, z, v_rf, omega_rf)


@memory.cache
def pseudo_hessian(x, y, z, v_rf, omega_rf):
    """Pseudopotential curvatures

    Returns:
        out: array_like, shape: (3, 3) + x.shape
    """
    return pseudoPotential.ps2(x, y, z, v_rf, omega_rf)
