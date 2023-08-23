#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 08/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

from pathlib import Path
import matplotlib.pyplot as plt

here = Path(__file__).resolve().parent

data_dir = here.parents[1] / "examples" / "data"
fig_width_two_columns = 7.223  # for figure*


def apply_style():
    plt.style.use(here / 'cpc.mplstyle')
