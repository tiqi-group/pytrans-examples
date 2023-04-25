#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: Tue 25 Apr 2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>
#
# Analytical functions for rectangle electrodes in a SET - generated in Mathematica
# ref: M.G.House, Phys.Rev.A 78, 033402 (2008)
# https://doi.org/10.1103/PhysRevA.78.033402
#
# flake8: noqa

import numpy as np
from numpy import abs as Abs
from numpy import sqrt as Sqrt
from numpy import arctan as ArcTan
from numpy import pi as Pi


elementary_charge = 1.602176634e-19
atomic_mass = 1.6605390666e-27
K = elementary_charge / (4 * atomic_mass * (2*Pi*1e6)**2)

def infx_el_potential(x, y, z, y1, y2):
    """potential of one electrode extending between y1 and y2, infinite along x"""
    x, y, z = np.broadcast_arrays(x, y, z)
    return (-ArcTan((-y + y1)/z) + ArcTan((-y + y2)/z))/Pi

def infx_el_gradient(x, y, z, y1, y2):
    x, y, z = np.broadcast_arrays(x, y, z)
    return np.stack([np.zeros_like(x),(1/((1 + (-y + y1)**2/z**2)*z) - 1/((1 + (-y + y2)**2/z**2)*z))/Pi,((-y + y1)/((1 + (-y + y1)**2/z**2)*z**2) - (-y + y2)/((1 + (-y + y2)**2/z**2)*z**2))/Pi], axis=-1)

def infx_rf_pair_potential(x, y, z, a, w):
    """potential of a pair of symmetric electrodes
        separated by a, of width w, infinite along x
    """
    x, y, z = np.broadcast_arrays(x, y, z)
    return (ArcTan((-0.5*a - y)/z) - ArcTan((-0.5*a - w - y)/z))/Pi + (-ArcTan((0.5*a - y)/z) + ArcTan((0.5*a + w - y)/z))/Pi

def infx_rf_pair_gradient(x, y, z, a, w):
    x, y, z = np.broadcast_arrays(x, y, z)
    return np.stack([np.zeros_like(x),(-(1/((1 + (-0.5*a - y)**2/z**2)*z)) + 1/((1 + (-0.5*a - w - y)**2/z**2)*z))/Pi + (1/((1 + (0.5*a - y)**2/z**2)*z) - 1/((1 + (0.5*a + w - y)**2/z**2)*z))/Pi,(-((-0.5*a - y)/((1 + (-0.5*a - y)**2/z**2)*z**2)) + (-0.5*a - w - y)/((1 + (-0.5*a - w - y)**2/z**2)*z**2))/Pi + ((0.5*a - y)/((1 + (0.5*a - y)**2/z**2)*z**2) - (0.5*a + w - y)/((1 + (0.5*a + w - y)**2/z**2)*z**2))/Pi], axis=-1)

def rf_null_z(a, w):
    r"""position of RF null for symmetric infinite electrode pair
            $$ z_0 = \frac{1}{2} \sqrt{a^2 (a + 2w)} $$
    """
    return Sqrt(a*(a + 2*w))/2.

def rf_saddle_z(a, w):
    r"""position of RF saddle point for symmetric infinite electrode pair
            $$ z_S = \frac{1}{2} \sqrt{a^2 + 2aw + 2(a+w)\sqrt{a(a+2w)}} $$
    """
    return Sqrt(a**2 + 2*a*w + 2*(a + w)*Sqrt(a*(a + 2*w)))/2.

def rf_trap_depth(a, w):
    r"""pseudopotential at the rf saddle point
            $$ \phi_D = \left[\frac{2w}{\pi (a+w) (a + w + \sqrt{a(a+2w)})}\right]^2 $$
    """
    return (4*w**2)/(Pi**2*(a + w)**2*(a + w + Sqrt(a*(a + 2*w)))**2)

def pseudo_potential(x, y, z, a, w):
    x, y, z = np.broadcast_arrays(x, y, z)
    return K * (64*w**2*((a**2 + 2*a*w + 4*y**2)**2 - 8*(a**2 + 2*a*w - 4*y**2)*z**2 + 16*z**4))/(Pi**2*((a - 2*y)**2 + 4*z**2)*((a + 2*w - 2*y)**2 + 4*z**2)*((a + 2*y)**2 + 4*z**2)*((a + 2*(w + y))**2 + 4*z**2))

def pseudo_gradient(x, y, z, a, w):
    x, y, z = np.broadcast_arrays(x, y, z)
    return K * np.stack([np.zeros_like(x),2*((((-2*(-0.5*a - y)**2)/((1 + (-0.5*a - y)**2/z**2)**2*z**4) + (2*(-0.5*a - w - y)**2)/((1 + (-0.5*a - w - y)**2/z**2)**2*z**4) + 1/((1 + (-0.5*a - y)**2/z**2)*z**2) - 1/((1 + (-0.5*a - w - y)**2/z**2)*z**2))/Pi + ((2*(0.5*a - y)**2)/((1 + (0.5*a - y)**2/z**2)**2*z**4) - (2*(0.5*a + w - y)**2)/((1 + (0.5*a + w - y)**2/z**2)**2*z**4) - 1/((1 + (0.5*a - y)**2/z**2)*z**2) + 1/((1 + (0.5*a + w - y)**2/z**2)*z**2))/Pi)*((-((-0.5*a - y)/((1 + (-0.5*a - y)**2/z**2)*z**2)) + (-0.5*a - w - y)/((1 + (-0.5*a - w - y)**2/z**2)*z**2))/Pi + ((0.5*a - y)/((1 + (0.5*a - y)**2/z**2)*z**2) - (0.5*a + w - y)/((1 + (0.5*a + w - y)**2/z**2)*z**2))/Pi) + (((-2*(-0.5*a - y))/((1 + (-0.5*a - y)**2/z**2)**2*z**3) + (2*(-0.5*a - w - y))/((1 + (-0.5*a - w - y)**2/z**2)**2*z**3))/Pi + ((2*(0.5*a - y))/((1 + (0.5*a - y)**2/z**2)**2*z**3) - (2*(0.5*a + w - y))/((1 + (0.5*a + w - y)**2/z**2)**2*z**3))/Pi)*((-(1/((1 + (-0.5*a - y)**2/z**2)*z)) + 1/((1 + (-0.5*a - w - y)**2/z**2)*z))/Pi + (1/((1 + (0.5*a - y)**2/z**2)*z) - 1/((1 + (0.5*a + w - y)**2/z**2)*z))/Pi)),2*((((-2*(-0.5*a - y)**3)/((1 + (-0.5*a - y)**2/z**2)**2*z**5) + (2*(-0.5*a - w - y)**3)/((1 + (-0.5*a - w - y)**2/z**2)**2*z**5) + (2*(-0.5*a - y))/((1 + (-0.5*a - y)**2/z**2)*z**3) - (2*(-0.5*a - w - y))/((1 + (-0.5*a - w - y)**2/z**2)*z**3))/Pi + ((2*(0.5*a - y)**3)/((1 + (0.5*a - y)**2/z**2)**2*z**5) - (2*(0.5*a + w - y)**3)/((1 + (0.5*a + w - y)**2/z**2)**2*z**5) - (2*(0.5*a - y))/((1 + (0.5*a - y)**2/z**2)*z**3) + (2*(0.5*a + w - y))/((1 + (0.5*a + w - y)**2/z**2)*z**3))/Pi)*((-((-0.5*a - y)/((1 + (-0.5*a - y)**2/z**2)*z**2)) + (-0.5*a - w - y)/((1 + (-0.5*a - w - y)**2/z**2)*z**2))/Pi + ((0.5*a - y)/((1 + (0.5*a - y)**2/z**2)*z**2) - (0.5*a + w - y)/((1 + (0.5*a + w - y)**2/z**2)*z**2))/Pi) + (((-2*(-0.5*a - y)**2)/((1 + (-0.5*a - y)**2/z**2)**2*z**4) + (2*(-0.5*a - w - y)**2)/((1 + (-0.5*a - w - y)**2/z**2)**2*z**4) + 1/((1 + (-0.5*a - y)**2/z**2)*z**2) - 1/((1 + (-0.5*a - w - y)**2/z**2)*z**2))/Pi + ((2*(0.5*a - y)**2)/((1 + (0.5*a - y)**2/z**2)**2*z**4) - (2*(0.5*a + w - y)**2)/((1 + (0.5*a + w - y)**2/z**2)**2*z**4) - 1/((1 + (0.5*a - y)**2/z**2)*z**2) + 1/((1 + (0.5*a + w - y)**2/z**2)*z**2))/Pi)*((-(1/((1 + (-0.5*a - y)**2/z**2)*z)) + 1/((1 + (-0.5*a - w - y)**2/z**2)*z))/Pi + (1/((1 + (0.5*a - y)**2/z**2)*z) - 1/((1 + (0.5*a + w - y)**2/z**2)*z))/Pi))], axis=-1)

def pseudo_hessian(x, y, z, a, w):
    x, y, z = np.broadcast_arrays(x, y, z)
    xx = np.zeros_like(x)
    xy = np.zeros_like(x)
    xz = np.zeros_like(x)
    yy = 2*((((-2*(-0.5*a - y))/((1 + (-0.5*a - y)**2/z**2)**2*z**3) + (2*(-0.5*a - w - y))/((1 + (-0.5*a - w - y)**2/z**2)**2*z**3))/Pi + ((2*(0.5*a - y))/((1 + (0.5*a - y)**2/z**2)**2*z**3) - (2*(0.5*a + w - y))/((1 + (0.5*a + w - y)**2/z**2)**2*z**3))/Pi)**2 + (((-2*(-0.5*a - y)**2)/((1 + (-0.5*a - y)**2/z**2)**2*z**4) + (2*(-0.5*a - w - y)**2)/((1 + (-0.5*a - w - y)**2/z**2)**2*z**4) + 1/((1 + (-0.5*a - y)**2/z**2)*z**2) - 1/((1 + (-0.5*a - w - y)**2/z**2)*z**2))/Pi + ((2*(0.5*a - y)**2)/((1 + (0.5*a - y)**2/z**2)**2*z**4) - (2*(0.5*a + w - y)**2)/((1 + (0.5*a + w - y)**2/z**2)**2*z**4) - 1/((1 + (0.5*a - y)**2/z**2)*z**2) + 1/((1 + (0.5*a + w - y)**2/z**2)*z**2))/Pi)**2 + (((-8*(-0.5*a - y)**3)/((1 + (-0.5*a - y)**2/z**2)**3*z**6) + (8*(-0.5*a - w - y)**3)/((1 + (-0.5*a - w - y)**2/z**2)**3*z**6) + (6*(-0.5*a - y))/((1 + (-0.5*a - y)**2/z**2)**2*z**4) - (6*(-0.5*a - w - y))/((1 + (-0.5*a - w - y)**2/z**2)**2*z**4))/Pi + ((8*(0.5*a - y)**3)/((1 + (0.5*a - y)**2/z**2)**3*z**6) - (8*(0.5*a + w - y)**3)/((1 + (0.5*a + w - y)**2/z**2)**3*z**6) - (6*(0.5*a - y))/((1 + (0.5*a - y)**2/z**2)**2*z**4) + (6*(0.5*a + w - y))/((1 + (0.5*a + w - y)**2/z**2)**2*z**4))/Pi)*((-((-0.5*a - y)/((1 + (-0.5*a - y)**2/z**2)*z**2)) + (-0.5*a - w - y)/((1 + (-0.5*a - w - y)**2/z**2)*z**2))/Pi + ((0.5*a - y)/((1 + (0.5*a - y)**2/z**2)*z**2) - (0.5*a + w - y)/((1 + (0.5*a + w - y)**2/z**2)*z**2))/Pi) + (((-8*(-0.5*a - y)**2)/((1 + (-0.5*a - y)**2/z**2)**3*z**5) + (8*(-0.5*a - w - y)**2)/((1 + (-0.5*a - w - y)**2/z**2)**3*z**5) + 2/((1 + (-0.5*a - y)**2/z**2)**2*z**3) - 2/((1 + (-0.5*a - w - y)**2/z**2)**2*z**3))/Pi + ((8*(0.5*a - y)**2)/((1 + (0.5*a - y)**2/z**2)**3*z**5) - (8*(0.5*a + w - y)**2)/((1 + (0.5*a + w - y)**2/z**2)**3*z**5) - 2/((1 + (0.5*a - y)**2/z**2)**2*z**3) + 2/((1 + (0.5*a + w - y)**2/z**2)**2*z**3))/Pi)*((-(1/((1 + (-0.5*a - y)**2/z**2)*z)) + 1/((1 + (-0.5*a - w - y)**2/z**2)*z))/Pi + (1/((1 + (0.5*a - y)**2/z**2)*z) - 1/((1 + (0.5*a + w - y)**2/z**2)*z))/Pi))
    yz = 2*((((-2*(-0.5*a - y))/((1 + (-0.5*a - y)**2/z**2)**2*z**3) + (2*(-0.5*a - w - y))/((1 + (-0.5*a - w - y)**2/z**2)**2*z**3))/Pi + ((2*(0.5*a - y))/((1 + (0.5*a - y)**2/z**2)**2*z**3) - (2*(0.5*a + w - y))/((1 + (0.5*a + w - y)**2/z**2)**2*z**3))/Pi)*(((-2*(-0.5*a - y)**2)/((1 + (-0.5*a - y)**2/z**2)**2*z**4) + (2*(-0.5*a - w - y)**2)/((1 + (-0.5*a - w - y)**2/z**2)**2*z**4) + 1/((1 + (-0.5*a - y)**2/z**2)*z**2) - 1/((1 + (-0.5*a - w - y)**2/z**2)*z**2))/Pi + ((2*(0.5*a - y)**2)/((1 + (0.5*a - y)**2/z**2)**2*z**4) - (2*(0.5*a + w - y)**2)/((1 + (0.5*a + w - y)**2/z**2)**2*z**4) - 1/((1 + (0.5*a - y)**2/z**2)*z**2) + 1/((1 + (0.5*a + w - y)**2/z**2)*z**2))/Pi) + (((-2*(-0.5*a - y)**3)/((1 + (-0.5*a - y)**2/z**2)**2*z**5) + (2*(-0.5*a - w - y)**3)/((1 + (-0.5*a - w - y)**2/z**2)**2*z**5) + (2*(-0.5*a - y))/((1 + (-0.5*a - y)**2/z**2)*z**3) - (2*(-0.5*a - w - y))/((1 + (-0.5*a - w - y)**2/z**2)*z**3))/Pi + ((2*(0.5*a - y)**3)/((1 + (0.5*a - y)**2/z**2)**2*z**5) - (2*(0.5*a + w - y)**3)/((1 + (0.5*a + w - y)**2/z**2)**2*z**5) - (2*(0.5*a - y))/((1 + (0.5*a - y)**2/z**2)*z**3) + (2*(0.5*a + w - y))/((1 + (0.5*a + w - y)**2/z**2)*z**3))/Pi)*(((-2*(-0.5*a - y)**2)/((1 + (-0.5*a - y)**2/z**2)**2*z**4) + (2*(-0.5*a - w - y)**2)/((1 + (-0.5*a - w - y)**2/z**2)**2*z**4) + 1/((1 + (-0.5*a - y)**2/z**2)*z**2) - 1/((1 + (-0.5*a - w - y)**2/z**2)*z**2))/Pi + ((2*(0.5*a - y)**2)/((1 + (0.5*a - y)**2/z**2)**2*z**4) - (2*(0.5*a + w - y)**2)/((1 + (0.5*a + w - y)**2/z**2)**2*z**4) - 1/((1 + (0.5*a - y)**2/z**2)*z**2) + 1/((1 + (0.5*a + w - y)**2/z**2)*z**2))/Pi) + (((-8*(-0.5*a - y)**4)/((1 + (-0.5*a - y)**2/z**2)**3*z**7) + (8*(-0.5*a - w - y)**4)/((1 + (-0.5*a - w - y)**2/z**2)**3*z**7) + (10*(-0.5*a - y)**2)/((1 + (-0.5*a - y)**2/z**2)**2*z**5) - (10*(-0.5*a - w - y)**2)/((1 + (-0.5*a - w - y)**2/z**2)**2*z**5) - 2/((1 + (-0.5*a - y)**2/z**2)*z**3) + 2/((1 + (-0.5*a - w - y)**2/z**2)*z**3))/Pi + ((8*(0.5*a - y)**4)/((1 + (0.5*a - y)**2/z**2)**3*z**7) - (8*(0.5*a + w - y)**4)/((1 + (0.5*a + w - y)**2/z**2)**3*z**7) - (10*(0.5*a - y)**2)/((1 + (0.5*a - y)**2/z**2)**2*z**5) + (10*(0.5*a + w - y)**2)/((1 + (0.5*a + w - y)**2/z**2)**2*z**5) + 2/((1 + (0.5*a - y)**2/z**2)*z**3) - 2/((1 + (0.5*a + w - y)**2/z**2)*z**3))/Pi)*((-((-0.5*a - y)/((1 + (-0.5*a - y)**2/z**2)*z**2)) + (-0.5*a - w - y)/((1 + (-0.5*a - w - y)**2/z**2)*z**2))/Pi + ((0.5*a - y)/((1 + (0.5*a - y)**2/z**2)*z**2) - (0.5*a + w - y)/((1 + (0.5*a + w - y)**2/z**2)*z**2))/Pi) + (((-8*(-0.5*a - y)**3)/((1 + (-0.5*a - y)**2/z**2)**3*z**6) + (8*(-0.5*a - w - y)**3)/((1 + (-0.5*a - w - y)**2/z**2)**3*z**6) + (6*(-0.5*a - y))/((1 + (-0.5*a - y)**2/z**2)**2*z**4) - (6*(-0.5*a - w - y))/((1 + (-0.5*a - w - y)**2/z**2)**2*z**4))/Pi + ((8*(0.5*a - y)**3)/((1 + (0.5*a - y)**2/z**2)**3*z**6) - (8*(0.5*a + w - y)**3)/((1 + (0.5*a + w - y)**2/z**2)**3*z**6) - (6*(0.5*a - y))/((1 + (0.5*a - y)**2/z**2)**2*z**4) + (6*(0.5*a + w - y))/((1 + (0.5*a + w - y)**2/z**2)**2*z**4))/Pi)*((-(1/((1 + (-0.5*a - y)**2/z**2)*z)) + 1/((1 + (-0.5*a - w - y)**2/z**2)*z))/Pi + (1/((1 + (0.5*a - y)**2/z**2)*z) - 1/((1 + (0.5*a + w - y)**2/z**2)*z))/Pi))
    zz = 2*((((-2*(-0.5*a - y)**3)/((1 + (-0.5*a - y)**2/z**2)**2*z**5) + (2*(-0.5*a - w - y)**3)/((1 + (-0.5*a - w - y)**2/z**2)**2*z**5) + (2*(-0.5*a - y))/((1 + (-0.5*a - y)**2/z**2)*z**3) - (2*(-0.5*a - w - y))/((1 + (-0.5*a - w - y)**2/z**2)*z**3))/Pi + ((2*(0.5*a - y)**3)/((1 + (0.5*a - y)**2/z**2)**2*z**5) - (2*(0.5*a + w - y)**3)/((1 + (0.5*a + w - y)**2/z**2)**2*z**5) - (2*(0.5*a - y))/((1 + (0.5*a - y)**2/z**2)*z**3) + (2*(0.5*a + w - y))/((1 + (0.5*a + w - y)**2/z**2)*z**3))/Pi)**2 + (((-2*(-0.5*a - y)**2)/((1 + (-0.5*a - y)**2/z**2)**2*z**4) + (2*(-0.5*a - w - y)**2)/((1 + (-0.5*a - w - y)**2/z**2)**2*z**4) + 1/((1 + (-0.5*a - y)**2/z**2)*z**2) - 1/((1 + (-0.5*a - w - y)**2/z**2)*z**2))/Pi + ((2*(0.5*a - y)**2)/((1 + (0.5*a - y)**2/z**2)**2*z**4) - (2*(0.5*a + w - y)**2)/((1 + (0.5*a + w - y)**2/z**2)**2*z**4) - 1/((1 + (0.5*a - y)**2/z**2)*z**2) + 1/((1 + (0.5*a + w - y)**2/z**2)*z**2))/Pi)**2 + (((-8*(-0.5*a - y)**5)/((1 + (-0.5*a - y)**2/z**2)**3*z**8) + (8*(-0.5*a - w - y)**5)/((1 + (-0.5*a - w - y)**2/z**2)**3*z**8) + (14*(-0.5*a - y)**3)/((1 + (-0.5*a - y)**2/z**2)**2*z**6) - (14*(-0.5*a - w - y)**3)/((1 + (-0.5*a - w - y)**2/z**2)**2*z**6) - (6*(-0.5*a - y))/((1 + (-0.5*a - y)**2/z**2)*z**4) + (6*(-0.5*a - w - y))/((1 + (-0.5*a - w - y)**2/z**2)*z**4))/Pi + ((8*(0.5*a - y)**5)/((1 + (0.5*a - y)**2/z**2)**3*z**8) - (8*(0.5*a + w - y)**5)/((1 + (0.5*a + w - y)**2/z**2)**3*z**8) - (14*(0.5*a - y)**3)/((1 + (0.5*a - y)**2/z**2)**2*z**6) + (14*(0.5*a + w - y)**3)/((1 + (0.5*a + w - y)**2/z**2)**2*z**6) + (6*(0.5*a - y))/((1 + (0.5*a - y)**2/z**2)*z**4) - (6*(0.5*a + w - y))/((1 + (0.5*a + w - y)**2/z**2)*z**4))/Pi)*((-((-0.5*a - y)/((1 + (-0.5*a - y)**2/z**2)*z**2)) + (-0.5*a - w - y)/((1 + (-0.5*a - w - y)**2/z**2)*z**2))/Pi + ((0.5*a - y)/((1 + (0.5*a - y)**2/z**2)*z**2) - (0.5*a + w - y)/((1 + (0.5*a + w - y)**2/z**2)*z**2))/Pi) + (((-8*(-0.5*a - y)**4)/((1 + (-0.5*a - y)**2/z**2)**3*z**7) + (8*(-0.5*a - w - y)**4)/((1 + (-0.5*a - w - y)**2/z**2)**3*z**7) + (10*(-0.5*a - y)**2)/((1 + (-0.5*a - y)**2/z**2)**2*z**5) - (10*(-0.5*a - w - y)**2)/((1 + (-0.5*a - w - y)**2/z**2)**2*z**5) - 2/((1 + (-0.5*a - y)**2/z**2)*z**3) + 2/((1 + (-0.5*a - w - y)**2/z**2)*z**3))/Pi + ((8*(0.5*a - y)**4)/((1 + (0.5*a - y)**2/z**2)**3*z**7) - (8*(0.5*a + w - y)**4)/((1 + (0.5*a + w - y)**2/z**2)**3*z**7) - (10*(0.5*a - y)**2)/((1 + (0.5*a - y)**2/z**2)**2*z**5) + (10*(0.5*a + w - y)**2)/((1 + (0.5*a + w - y)**2/z**2)**2*z**5) + 2/((1 + (0.5*a - y)**2/z**2)*z**3) - 2/((1 + (0.5*a + w - y)**2/z**2)*z**3))/Pi)*((-(1/((1 + (-0.5*a - y)**2/z**2)*z)) + 1/((1 + (-0.5*a - w - y)**2/z**2)*z))/Pi + (1/((1 + (0.5*a - y)**2/z**2)*z) - 1/((1 + (0.5*a + w - y)**2/z**2)*z))/Pi))
    h1 = np.asarray([[xx,xy,xz],[xy,yy,yz],[xz,yz,zz]])
    return K * h1.transpose(tuple(_ for _ in range(2, h1.ndim)) + (0, 1))
