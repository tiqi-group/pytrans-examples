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

from pprint import pprint


def plot(figname):

    from models.surface_trap import SurfaceTrap
    from models.surface_trap.plot import plot_voltages_on_trap

    from plotting.settings import data_dir, apply_style
    apply_style()

    here = Path(__file__).parent
    layout = fifi.FigureLayout(here / 'fig_transport_template_twocolumns.svg',
                               make_mplfigures=True)

    pprint(layout.axes)

    trap = SurfaceTrap()
    waveform = np.load(data_dir / 'waveform_transport.npy')

    with open(data_dir / 'analysis_transport.json', 'r') as fp:
        results = json.load(fp)

    ax = layout.axes['ax']['axis']

    t_eq = np.arange(len(waveform)) * trap.dt
    x_eq = np.stack([np.asarray(r['x_eq']) for r in results], axis=0)
    ax.plot(t_eq * 1e6, x_eq[:, 0] * 1e6, 'k')

    # with open(data_dir / 'simulation_transport.json', 'r') as fp:
    #     sim_results = json.load(fp)
    #
    # t_sim = np.asarray(sim_results['t'])
    # x_sim = np.asarray(sim_results['x'])
    # ax.plot(t_sim * 1e6, x_sim[:, :, 0] * 1e6)

    ax.set(
        xlabel='t [us]',
        ylabel='x [um]'
    )

    # I have no idea why this doesn't work ??
    # _style = {'font.size': 5, 'axes.linewidth': 0.5}
    # plt.style.use(_style)

    def _plot_voltages(voltages, axes, fontsize=5):

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
        yticks=(-10, 0, 10),
        ylabel='DC Voltage [V]'
    )
    cax.yaxis.set_ticks_position('right')
    cax.tick_params(labelsize=5)
    cax.yaxis.get_label().set_fontsize(5)

    figname_svg = figname[:-4] + '.svg'
    layout.save(figname_svg)
    subprocess.run(["inkscape", figname_svg, "--export-type=pdf", "-o", figname], shell=True)
    Path(figname_svg).unlink()
