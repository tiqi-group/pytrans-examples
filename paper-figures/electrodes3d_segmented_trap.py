#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 08/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


import numpy as np
import pyvista as pv
from plotting import plot3d as p3d
from models.segmented_trap.model import SegmentedTrapRFElectrode

RF = SegmentedTrapRFElectrode()


def electric_field(x, y, z):
    """Calculates the electric field at the point (x, y, z).
    Replace this function with your actual function for calculating the electric field."""
    # Placeholder electric field: a field with strength 1 in the z-direction
    # u = np.zeros_like(x)
    # v = np.zeros_like(y)
    # w = np.ones_like(z)
    G = RF._unit_gradient(x * 1e-6, y * 1e-6, z * 1e-6)
    u, v, w = G[..., 0], G[..., 1], G[..., 2]
    return u, v, w


def main():
    import json
    import models
    from pathlib import Path

    root = Path(models.__file__).resolve().parent
    print(root)
    with open(root / "segmented_trap" / "segmented_trap_geometry.json", 'r') as fp:
        ed = json.load(fp)

    hh = 150
    dz = 10
    electrodes = {}
    for name, pp in ed.items():
        pp = np.asarray(pp[0][:-1])
        # if name.startswith('DCCc'):
        z = -hh / 2 if name.startswith('DCCc') else hh / 2
        electrodes[name] = (
            (pp[:, 0].mean(), -pp[:, 1].mean(), z),
            pp[:, 0].ptp(), pp[:, 1].ptp(), dz
        )

    electrodes['RF1'] = ((0, 200, -hh / 2), 650, 250, dz)
    electrodes['RF2'] = ((0, -200, hh / 2), 650, 250, dz)

    plotter = pv.Plotter()

    for name, ee in electrodes.items():
        print(name, ee)
        p3d.plot_electrode(plotter, *ee)

    # Create the grid for the vector field
    # x, y, z = np.mgrid[-0:0:1j, -3:3:7j, -3:3:7j]
    # u, v, w = electric_field(x, y, z)
    # p3d.plot_vector_field(plotter, x, y, z, u, v, w, factor=2, cmap='Reds')

    plotter.add_axes(color='k')
    plotter.show(screenshot="figures/segmented_trap.png")


def print_lims():
    print(RF._interp.xIntMin * 1e6, RF._interp.xIntMax * 1e6)
    print(RF._interp.yIntMin * 1e6, RF._interp.yIntMax * 1e6)
    print(RF._interp.zIntMin * 1e6, RF._interp.zIntMax * 1e6)


if __name__ == '__main__':
    print_lims()
    main()
