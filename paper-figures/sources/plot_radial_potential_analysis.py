#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 08/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


import numpy as np
from pytrans.analysis import analyse_potential
from pytrans.plotting import plot_potential_make_layout
from pytrans.ions import Ca40

# make sure this is imported last to apply the style


def plot(figname):
    from plotting.settings import data_dir
    from models.segmented_trap import SegmentedTrap

    trap = SegmentedTrap()
    waveform = np.load(data_dir / 'waveform_static_segmented_trap.npy')

    r0 = (0, 0, trap.z0)
    roi = ((-5e-6, 10e-6), 3.5e-6, 3.5e-6)
    fig, axes = plot_potential_make_layout(n=1)
    analyse_potential(trap, voltages=waveform[0], ions=Ca40, r0=r0, roi=roi, verbose=False, axes=axes)

    fig.savefig(figname)
