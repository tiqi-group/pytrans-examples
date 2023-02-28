#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 02/2022
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


from .c_code import potentialsDC_aot
from .vectorize import vectorize_stack


@vectorize_stack
def E1(x, y, z):
    return potentialsDC_aot.E1(x, y, z)


@vectorize_stack
def E2(x, y, z):
    return potentialsDC_aot.E2(x, y, z)


@vectorize_stack
def E3(x, y, z):
    return potentialsDC_aot.E3(x, y, z)


@vectorize_stack
def E4(x, y, z):
    return potentialsDC_aot.E4(x, y, z)


@vectorize_stack
def E5(x, y, z):
    return potentialsDC_aot.E5(x, y, z)


@vectorize_stack
def E6(x, y, z):
    return potentialsDC_aot.E6(x, y, z)


@vectorize_stack
def E7(x, y, z):
    return potentialsDC_aot.E7(x, y, z)


@vectorize_stack
def E8(x, y, z):
    return potentialsDC_aot.E8(x, y, z)


@vectorize_stack
def E9(x, y, z):
    return potentialsDC_aot.E9(x, y, z)


@vectorize_stack
def E10(x, y, z):
    return potentialsDC_aot.E10(x, y, z)


@vectorize_stack
def E11(x, y, z):
    return potentialsDC_aot.E11(x, y, z)


@vectorize_stack
def E12(x, y, z):
    return potentialsDC_aot.E12(x, y, z)


@vectorize_stack
def E13(x, y, z):
    return potentialsDC_aot.E13(x, y, z)


@vectorize_stack
def E14(x, y, z):
    return potentialsDC_aot.E14(x, y, z)


@vectorize_stack
def E15(x, y, z):
    return potentialsDC_aot.E15(x, y, z)


@vectorize_stack
def E16(x, y, z):
    return potentialsDC_aot.E16(x, y, z)


@vectorize_stack
def E17(x, y, z):
    return potentialsDC_aot.E17(x, y, z)


@vectorize_stack
def E18(x, y, z):
    return potentialsDC_aot.E18(x, y, z)


@vectorize_stack
def E19(x, y, z):
    return potentialsDC_aot.E19(x, y, z)


@vectorize_stack
def E20(x, y, z):
    return potentialsDC_aot.E20(x, y, z)
