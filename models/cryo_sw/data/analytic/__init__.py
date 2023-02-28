#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 02/2022
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

'''
Import precompiled modules when possible
'''

# flake8: noqa

import logging

logger = logging.getLogger(__name__)


try:
    from ._numba import potentialsDC
    logger.info("Import compiled module for potentialsDC")
except ImportError:
    from ._python import potentialsDC
    logger.warning("Fallback to python module for potentialsDC")


try:
    from ._numba import gradientsDC
    logger.info("Import compiled module for gradientsDC")
except ImportError:
    from ._python import gradientsDC
    logger.warning("Fallback to python module for gradientsDC")
