#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 08/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

import numpy as np
from pathlib import Path
import json

import figurefirst as fifi


def plot(figname):

    from models.surface_trap import SurfaceTrap
    from models.surface_trap.plot import plot_voltages_on_trap

    from plotting.settings import data_dir, apply_style
    apply_style()

    here = Path(__file__).parent
    layout = fifi.FigureLayout(here / 'fig_transport_template.svg', make_mplfigures=True)

    with open(data_dir / 'analysis_transport.json', 'r') as fp:
        results = json.load(fp)

    x_eq = np.stack([np.asarray(r['x_eq']) * 1e6 for r in results], axis=0)

    ax = layout.figures['none']['ax']['axis']
    ax.plot(x_eq[:, 0], 'k')

    ax.set(
        xlabel='t [us]',
        ylabel='x [um]'
    )

    trap = SurfaceTrap()
    waveform = np.load(data_dir / 'waveform_transport.npy')

    def _plot_voltages(voltages, axes):
        _ = plot_voltages_on_trap(trap, voltages, axes=axes, fontsize=2)

        for _ax in axes:
            _ax.set(
                xticks=[],
                yticks=[],
                xlabel=None,
                ylabel=None
            )

    ax0 = layout.figures['fig_start']['ax0']['axis']
    ax = layout.figures['fig_start']['ax']['axis']
    _plot_voltages(waveform[0], (ax0, ax))

    ax0 = layout.figures['fig_stop']['ax0']['axis']
    ax = layout.figures['fig_stop']['ax']['axis']
    _plot_voltages(waveform[-1], axes=[ax0, ax])

    layout.save(Path(figname).with_suffix('.svg'))
