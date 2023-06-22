#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 10/2022
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

from .data import data_path
import re
import numpy as np
import pickle
from qinterp import TricubicScalarInterpolator

with open(data_path / 'trap.pickle', 'rb') as f:
    electrode_potentials, origin, spacing, dimensions, x, y, z, xx, yy, zz, coordinates = pickle.load(f)


def _sort(name):
    m = re.search("(DC[CS])([abcd])([0-9]+)", name)
    if not m:
        return ('ZZ', 'ZZ', 99)
    return (m.groups()[0], m.groups()[1], int(m.groups()[2]))


electrodes = list(electrode_potentials.keys())
electrodes.sort(key=_sort)
electrode_potentials = {name: electrode_potentials[name] for name in electrodes}

interpolators = {}

for name, pot in electrode_potentials.items():
    field = np.stack([xx, yy, zz, pot], axis=1)
    interp = TricubicScalarInterpolator(field)
    interpolators[name] = interp

x_min = interp.xIntMin
x_max = interp.xIntMax
y_min = interp.yIntMin
y_max = interp.yIntMax
z_min = interp.zIntMin
z_max = interp.zIntMax
