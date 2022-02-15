#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 02/2022
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

from models.interp import InterpTrap as Trap
# from models.surface_trap import SurfaceTrap as Trap

import numpy as np
import matplotlib.pyplot as plt

trap = Trap()

fig, (ax_x, ax_y, ax0, ax1) = plt.subplots(1, 4, figsize=(18, 4))

z0 = 50e-6
x = np.linspace(-200, 200, 100) * 1e-6
y = np.linspace(-20, 20, 30) * 1e-6
z = np.linspace(-20, 20, 30) * 1e-6 + z0

moments = trap.dc_potentials(x, 0, z0)
for name, v in zip(trap.electrodes, moments):
    ax_x.plot(x * 1e6, v, label=name)

moments = trap.dc_potentials(0, y, z0)
for name, v in zip(trap.electrodes, moments):
    ax_y.plot(y * 1e6, v, label=name)

ax_y.legend()

Y, Z = np.meshgrid(y, z)

vv = trap.dc_potentials(0, Y, Z).sum(0)
ax0.contour(Y * 1e6, Z * 1e6, vv, 50)
ax0.set_aspect(1)
ax0.set_title(" + ".join(trap.electrodes))

ps = trap.pseudo_potential(0, Y, Z)
ax1.contour(Y * 1e6, Z * 1e6, ps, 50)
ax1.set_aspect(1)

plt.show()
