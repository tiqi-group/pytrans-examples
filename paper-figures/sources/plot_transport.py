#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 08/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

import numpy as np
import matplotlib as mpl
from pathlib import Path
import json
import subprocess
import figurefirst as fifi


def plot(figname):

    from models.surface_trap import SurfaceTrap
    from models.surface_trap.plot import plot_voltages_on_trap

    from plotting.settings import data_dir, apply_style
    apply_style()

    here = Path(__file__).parent
    layout = fifi.FigureLayout(here / 'fig_transport_template_twocolumns.svg', make_mplfigures=True)

    with open(data_dir / 'analysis_transport.json', 'r') as fp:
        results = json.load(fp)

    x_eq = np.stack([np.asarray(r['x_eq']) * 1e6 for r in results], axis=0)

    ax = layout.axes['ax']['axis']
    ax.plot(x_eq[:, 0], 'k')

    ax.set(
        xlabel='t [us]',
        ylabel='x [um]'
    )

    trap = SurfaceTrap()
    waveform = np.load(data_dir / 'waveform_transport.npy')

    def _plot_voltages(voltages, axes, fontsize=5):
        # _style = {'font.size': 5, 'axes.linewidth': 0.5}
        # with mpl.style.context(_style):
        _ = plot_voltages_on_trap(trap, voltages, axes=axes, fontsize=0)
        ax0, ax = axes
        ax0.set(
            xticklabels=[],
            yticklabels=[],
            xlabel=None,
            ylabel=None,
        )
        ax.tick_params(labelsize=fontsize)
        ax.xaxis.get_label().set_fontsize(fontsize)
        ax.yaxis.get_label().set_fontsize(fontsize)

    ax0 = layout.figures['fig_start']['ax0']['axis']
    ax = layout.figures['fig_start']['ax']['axis']
    _plot_voltages(waveform[0], (ax0, ax))

    ax0 = layout.figures['fig_stop']['ax0']['axis']
    ax = layout.figures['fig_stop']['ax']['axis']
    _plot_voltages(waveform[-1], axes=[ax0, ax])

    cax = layout.axes['cax']['axis']
    mpl.colorbar.ColorbarBase(cax, cmap='RdBu_r', norm=mpl.colors.Normalize(vmin=-10, vmax=10))
    cax.set(
        yticks=(-10, 0, 10)
    )
    cax.yaxis.set_ticks_position('left')

    figname_svg = figname[:-4] + '.svg'
    layout.save(figname_svg)
    subprocess.run(["inkscape", figname_svg, "--export-type=pdf", "-o", figname], shell=True)
    # Path(figname_svg).unlink()
