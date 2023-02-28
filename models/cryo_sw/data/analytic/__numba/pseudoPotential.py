#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 02/2022
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


from .c_code import pseudoPotential_aot
from .vectorize import vectorize_stack

ps0 = vectorize_stack(pseudoPotential_aot.ps0)
ps1 = vectorize_stack(pseudoPotential_aot.ps1)
