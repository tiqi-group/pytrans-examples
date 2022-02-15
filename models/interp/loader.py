#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 02/2022
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

import numpy as np
from pathlib import Path
# from qinterp import tricubic
from scipy.interpolate import RegularGridInterpolator
from functools import wraps


data_path = Path(__file__).parent / 'data' / 'data3d.npy'
data = np.load(data_path)  # columns: x, y, z, V_E2, Vps
shape = (81, 51, 51)

# interp_dc = tricubic(data[:, [0, 1, 2, 3]])
# interp_ps = tricubic(data[:, [0, 1, 2, 4]])
xyz = tuple(map(np.unique, data[:, :3].T))
shape = tuple(map(len, xyz))
print('-------- load:', shape)

interp_dc = RegularGridInterpolator(xyz, data[:, 3].reshape(shape))
interp_ps = RegularGridInterpolator(xyz, data[:, 4].reshape(shape))


def vectorize(func):
    @wraps(func)
    def wrapper(*args):
        args1 = np.broadcast_arrays(*args)
        arg_shape = args1[0].shape
        args1 = np.stack([a.ravel() for a in args1], axis=1)
        out = func(args1).T.squeeze()
        return out.reshape(out.shape[:-1] + arg_shape)
    return wrapper


# def moment0(x, y, z):
#     return vectorize(interp_dc)(x, y, z)

def moment0(x, y, z):
    return interp_dc((x, y, z))


def moment_ps(x, y, z):
    return vectorize(interp_ps)(x, y, z)
