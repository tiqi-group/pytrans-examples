#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 02/2022
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

import numpy as np
from functools import wraps


def vectorize_stack(func):
    @wraps(func)
    def wrapper(*args):
        try:
            return func(*args)
        except TypeError:
            args1 = np.broadcast_arrays(*args)
            arg_shape = args1[0].shape
            args1 = zip(*[a.ravel() for a in args1])
            out = np.stack([func(*a) for a in args1], axis=-1)
            return out.reshape(out.shape[:-1] + arg_shape)
    return wrapper
