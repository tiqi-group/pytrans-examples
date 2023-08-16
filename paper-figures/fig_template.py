#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 08/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


import matplotlib.pyplot as plt
from pytrans.plotting import plot_potential_make_layout

from plotting.settings import figsize1

fig, axes = plot_potential_make_layout(n=1, figsize=figsize1)

fig.savefig('figures/fig_template.svg')
plt.show()
