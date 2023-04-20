#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 10/2021
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

'''
Module docstring
'''
import numpy as np
from numpy.typing import ArrayLike
import matplotlib.pyplot as plt  # noqa

from matplotlib.path import Path
from matplotlib.patches import PathPatch
from matplotlib.colors import Normalize
from matplotlib.collections import PatchCollection
from matplotlib.animation import FuncAnimation

import json
from pathlib import Path as pathlib_path
from .model import SurfaceTrap


plt.rcParams['font.size'] = 9
electrodes_data = pathlib_path(__file__).parent / 'surface_trap_geometry.json'

with open(electrodes_data, 'r') as f:
    electrodes = json.load(f)

all_patches = {}
for name, ele in electrodes.items():
    path = Path.make_compound_path(*[Path(ring) for ring in ele])
    patch = PathPatch(path)
    all_patches[name] = patch

labels_positions = [(560, 50)] + [(560, -50)] + \
    [(165 * (n - 3), 180) for n in range(1, 6)] + \
    [(165 * (n - 3), -180) for n in range(1, 6)]


def find_ylim(a, r=0.05):
    _min = np.min(a)
    _max = np.max(a)
    ptp = _max - _min
    return _min - r * ptp, _max + r * ptp


def _setup_plot_on_trap(trap: SurfaceTrap, vmin=-10, vmax=10, cmap='RdBu_r',
                        edgecolor='k', linewidth=0.5, fontsize=7, title=''):

    fig, axes = plt.subplots(2, 1, figsize=(6, 3.2),
                             sharex=True, dpi=100,
                             gridspec_kw=dict(height_ratios=[0.5, 1], top=0.95, bottom=0.14))
    fig.suptitle(title)
    ax0, ax = axes

    nv = trap.n_electrodes
    vzeros = np.zeros((nv,))

    # plot electrodes and voltages
    patches = [all_patches[name] for name in trap._all_electrodes]
    patches_blank = set(all_patches.values()) - set(patches)

    cmap = plt.colormaps[cmap]
    norm = Normalize(vmin=vmin, vmax=vmax)
    colors = cmap(norm(vzeros))
    pc = PatchCollection(patches, facecolor=colors, edgecolor=edgecolor, linewidth=linewidth, cmap=cmap, norm=norm)
    ax.add_collection(pc)

    poss = [labels_positions[j] for j in trap.electrode_all_indices]
    labels = []
    for pos in poss:
        tx = ax.text(*pos, f"{0:+.2f}", ha='center', va='center', fontsize=fontsize)
        labels.append(tx)

    pc_rf = PatchCollection(patches_blank, facecolor='none', edgecolor=edgecolor, linewidth=linewidth, cmap=cmap, norm=norm)
    ax.add_collection(pc_rf)

    ttime = ax.text(0.9, 0.85, '', transform=ax0.transAxes)

    ax.set(
        xlim=(-525, 525),
        ylim=(-400, 400),
        xticks=np.arange(-500, 501, 250),
        yticks=np.arange(-400, 401, 400),
        xlabel='x [um]',
        ylabel='y [um]',
        # aspect=1,
    )

    # plot potential
    p0 = np.zeros_like(trap.x)
    pot, = ax0.plot(trap.x * 1e6, p0)

    ax0.spines['right'].set_visible(False)
    ax0.spines['top'].set_visible(False)
    ax0.set(
        ylabel='$\\phi$ [eV]'
    )
    fig.align_ylabels()

    artists = (pc, pot, ttime, tuple(labels))
    return fig, axes, artists


def plot_voltages_on_trap(trap: SurfaceTrap, voltages: ArrayLike, vmin=-10, vmax=10, cmap='RdBu_r',
                          edgecolor='k', linewidth=0.5, fontsize=7, title=''):

    fig, axes, artists = _setup_plot_on_trap(trap, vmin, vmax, cmap,
                                             edgecolor, linewidth, fontsize, title)

    ax0, ax = axes
    pc, pot, ttime, labels = artists

    potential = trap.potential(voltages, trap.x, 0, trap.z0, 1, pseudo=False)
    cmap = plt.colormaps[cmap]
    norm = Normalize(vmin=vmin, vmax=vmax)

    colors = cmap(norm(voltages))
    pc.set_facecolor(colors)
    pot.set_ydata(potential)
    pot.axes.relim()
    pot.axes.autoscale_view()
    for volt, t in zip(voltages, labels):
        t.set_text(f"{volt:+.2f}")
        t.set_color('k' if abs(volt) < 10 else 'w')
    return fig, axes


def animate_waveform_on_trap(trap: SurfaceTrap, waveform: ArrayLike, vmin=-10, vmax=10, cmap='RdBu_r',
                             edgecolor='k', linewidth=0.5, fontsize=7, title='',
                             frames=None, animate_kw=dict()):

    fig, axes, artists = _setup_plot_on_trap(trap, vmin, vmax, cmap,
                                             edgecolor, linewidth, fontsize, title)
    ax0, ax = axes
    pc, pot, ttime, labels = artists

    potentials = trap.potential(waveform, trap.x, 0, trap.z0, 1, pseudo=False)
    cmap = plt.colormaps[cmap]
    norm = Normalize(vmin=vmin, vmax=vmax)

    def init():
        ax0.set_ylim(find_ylim(potentials))
        return (pc, pot, ttime,) + labels

    def update(j):
        colors = cmap(norm(waveform[j]))
        pc.set_facecolor(colors)
        pot.set_ydata(potentials[j])
        pot.axes.relim()
        pot.axes.autoscale_view()
        for v, t in zip(waveform[j], labels):
            t.set_text(f"{v:+.2f}")
            t.set_color('k' if abs(v) < 10 else 'w')
        ttime.set_text(str(j))
        return (pc, pot, ttime,) + labels

    kw = dict(blit=True, interval=20, repeat_delay=2000)
    kw.update(animate_kw)

    frames = range(len(waveform)) if frames is None else frames
    ani = FuncAnimation(fig, update, frames=frames,
                        init_func=init, **kw)
    return ani


if __name__ == '__main__':
    trap = SurfaceTrap(["E1"])
    plot_voltages_on_trap(trap, [1.0])

    # t = np.linspace(0, 1, 200)
    # axials = 1.9e6 + 0.5e6 * np.sin(2 * np.pi * 2 * t)
    # trap = SurfaceTrap()
    # waveform = np.stack([trap.from_static_params(_ax, -5e6)[0] for _ax in axials], axis=0)

    # ani = animate_waveform_on_trap(trap, waveform)

    # from pytrans.plotting import animate_waveform
    # ani2 = animate_waveform(trap, waveform, trap.x, 0, trap.z0)
    plt.show()
