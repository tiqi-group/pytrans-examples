#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 10/2022
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

from .data import data_path
import numpy as np
from qinterp import TricubicScalarInterpolator

data = np.load(data_path / 'surface_trap_data.npz')

X = data["X"]
Y = data["Y"]
Z = data["Z"]

electrodes = [f"E{j}" for j in range(1, 21)] + ['pseudo_potential_1V1MHz1amu']

interpolators = {}

for name in electrodes:
    print(f"Loading interpolator for {name}")
    field = np.stack([X, Y, Z, data[name]], axis=1)
    interp = TricubicScalarInterpolator(field)
    interpolators[name] = interp

x_min = interp.xIntMin
x_max = interp.xIntMax
y_min = interp.yIntMin
y_max = interp.yIntMax
z_min = interp.zIntMin
z_max = interp.zIntMax
