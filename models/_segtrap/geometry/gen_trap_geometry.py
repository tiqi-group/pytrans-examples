#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 10/2022
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


import numpy as np

import matplotlib.pyplot as plt
from . import polytools as pt
from shapely.geometry import Polygon
import json
from model import Segtrap
from pathlib import Path


electrode_names = [n for n in Segtrap._electrodes if n.startswith('DCC')]

# corrected
electrode_coords = np.asarray([[-3055, -2055],
                               [-2035, -1535],
                               [-1515, -1015],
                               [-995, -695],
                               [-675, -520],
                               [-500, -345],
                               [-325, -170],
                               [-150, 150],
                               [170, 325],
                               [345, 500],
                               [520, 675],
                               [695, 995],
                               [1015, 1515],
                               [1535, 2035],
                               [2055, 3055]]
                              )

trap_y = 150  # not to scale
electrode_y = 200  # not to scale


if __name__ == '__main__':

    electrodes = {}
    filename = Path(__file__).parent / '..' / 'segtrap_electrodes.json'

    for j, name in enumerate(electrode_names):
        x1, x2 = electrode_coords[j % len(electrode_coords)]
        if name.startswith('DCCc'):  # top
            points = [
                [x1, trap_y],
                [x2, trap_y],
                [x2, trap_y + electrode_y],
                [x1, trap_y + electrode_y],
            ]
        else:  # bottom
            points = [
                [x1, -trap_y],
                [x1, -trap_y - electrode_y],
                [x2, -trap_y - electrode_y],
                [x2, -trap_y]
            ]
        electrodes[name] = Polygon(points)

    fig, ax = plt.subplots()
    for k, el in electrodes.items():
        pt.plot_polygon(ax, el, facecolor='C0', edgecolor='lightgray')

    # pt.plot_polygon(ax, p_gaps, color='lightgray')
    ax.set_aspect(1)

    # for el in electrodes.values():
    #     print(el.is_valid)

    # ----- write to json

    electrodes = {k: pt.get_oriented_coords(p) for k, p in electrodes.items()}

    with open(filename, 'w') as f:
        json.dump(electrodes, f, indent=2)

    plt.show()
