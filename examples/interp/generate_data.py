#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 02/2022
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


import numpy as np
from pathlib import Path
from models.surface_trap.data import dc, pseudo
import models

dest = Path(models.__file__).parent / 'interp' / 'data'
dest.mkdir(parents=True, exist_ok=True)

x = np.arange(-400, 410, 10) * 1e-6  # micrometers
y = np.arange(-50, 52, 2) * 1e-6
z = np.arange(0, 102, 2) * 1e-6

XYZ = np.meshgrid(x, y, z, indexing='ij')
X, Y, Z = map(np.ravel, XYZ)  # 1D arrays of length len(x) * len(y) * len(z)

moment0_data = dc.moment0(X, Y, Z)
pseudopot_data = pseudo.ps0(X, Y, Z)

data = np.stack([X, Y, Z, moment0_data, pseudopot_data], axis=1)

filename = 'data3d.npy'

readme = f"""
# {filename}
Sample of potential data on a 3d grid
shape: {len(x) * len(y) * len(z)} x 5
columns: x, y, z, Vdc_E2, Vps
grid: {' x '.join([f"{a[0]*1e6:.0f}:{a[-1]*1e6:.0f}:{(a[1] - a[0])*1e6:.0f}" for a in (x, y, z)])} um
grid shape: ({len(x)}, {len(y)}, {len(z)})
"""

np.save(dest / filename, data)
with open(dest / 'README.md', 'w') as f:
    f.write(readme)
