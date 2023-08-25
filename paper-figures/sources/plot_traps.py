#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 08/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

import numpy as np
import matplotlib.pyplot as plt
from matplotlib.colors import Normalize
from pathlib import Path as PathlibPath
import subprocess
import figurefirst as fifi

from pprint import pprint


def plot(figname):

    from matplotlib.path import Path
    from matplotlib.patches import PathPatch
    from matplotlib.collections import PatchCollection

    from models.segmented_trap import SegmentedTrap
    from models.segmented_trap.plot import electrodes as _electrodes_coords

    from plotting.settings import apply_style
    from plotting.utils import label_subplots
    apply_style()

    here = PathlibPath(__file__).parent
    layout = fifi.FigureLayout(here / 'fig_traps_template.svg',
                               make_mplfigures=True)

    pprint(layout.axes)

    electrodes = ['DCCa6', 'DCCa7', 'DCCa8']
    electrodes_coords = {}
    electrodes_center = {}
    for k in electrodes:
        ele = np.asarray(_electrodes_coords[k])
        np.clip(ele[0][:, 1], -150, None, out=ele[0][:, 1])
        electrodes_coords[k] = ele
        electrodes_center[k] = (ele[0][:-1, 0].mean(), ele[0][:-1, 1].mean())

    patches = {}
    for j, (k, ele) in enumerate(electrodes_coords.items()):
        path = Path.make_compound_path(*[Path(ring) for ring in ele])
        patch = PathPatch(path)
        patches[k] = patch

    trap = SegmentedTrap(electrodes)
    voltages = np.asarray([0.75, -1.37, 1.2])

    ax = layout.axes['ax']['axis']
    ax_ele = layout.axes['ax_ele']['axis']

    x = np.linspace(-550, 550, 200) * 1e-6
    pot = trap.potential(voltages, x, 0, 0, ion_mass_amu=1, pseudo=False)
    ax.plot(x * 1e6, pot, 'k')

    cmap = plt.colormaps['RdBu_r']
    norm = Normalize(vmin=-2, vmax=2)

    for v, k in zip(voltages, electrodes):
        pot = v * trap.get_electrode(k).potential(x, 0, 0)
        color = cmap(norm(v))
        ax.plot(x * 1e6, pot, '--', color=color, lw=1, zorder=-1)

    xlim = (-600, 600)
    for direction in 'right', 'top', 'bottom':
        ax.spines[direction].set_visible(False)
    ax.set(
        xlim=xlim,
        xticks=[],
        ylabel='$\\phi$ [eV]'
    )

    pc = PatchCollection(patches.values(), facecolor='gold', edgecolor='k', linewidth=0.5)
    # pc = PatchCollection(patches.values(), facecolor=cmap(norm(voltages)), edgecolor='k', linewidth=0.5, cmap=cmap, norm=norm)
    ax_ele.add_collection(pc)

    for v, k in zip(voltages, electrodes):
        xy = electrodes_center[k]
        ax_ele.text(*xy, f"{v:0.2f}", ha='center', va='center', fontsize=5)

    for direction in 'top', 'left', 'right':
        ax_ele.spines[direction].set_visible(False)
    ax_ele.set(
        xlim=xlim,
        xticks=np.arange(-500, 501, 250),
        xlabel='x [um]',

        ylim=(-200, -50),
        yticks=[]
        # ylabel='y [um]',
        # aspect=1,
    )

    ax1 = layout.axes['ax1']['axis']
    ax2 = layout.axes['ax2']['axis']
    ax1.axis('off')
    ax2.axis('off')
    label_subplots(axes=[ax1, ax2, ax], xpos=-0.025, ypos=0.05, scale_text=1.2)

    figname_svg = figname[:-4] + '.svg'
    layout.save(figname_svg)
    subprocess.run(["inkscape", figname_svg, "--export-type=pdf", "-o", figname], shell=True)
    PathlibPath(figname_svg).unlink()
