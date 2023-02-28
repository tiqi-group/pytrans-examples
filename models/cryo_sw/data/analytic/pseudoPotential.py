#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 02/2022
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

# flake8: noqa

import logging

logger = logging.getLogger(__name__)

try:
    from ._numba.pseudoPotential import ps0, ps1
    logger.info("Import compiled module for pseudoPotential (0,1)")
except ImportError:
    from ._python.pseudoPotential import ps0, ps1
    logger.warning("Fallback to python module for pseudoPotential (0,1)")


from ._python.pseudoPotential import ps2
