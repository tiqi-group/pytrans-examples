#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 08/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

import numpy as np
import pyvista as pv
from plotting import plot3d as p3d
from models.surface_trap.geometry import rf_sep, rf_width
from rectset import pseudopotential as ps


def electric_field(x, y, z):
    """Calculates the electric field at the point (x, y, z).
    Replace this function with your actual function for calculating the electric field."""
    # Placeholder electric field: a field with strength 1 in the z-direction
    # u = np.zeros_like(x)
    # v = np.zeros_like(y)
    # w = np.ones_like(z)
    G = ps.infx_rf_pair_gradient(x * 1e-6, y * 1e-6, z * 1e-6, rf_sep, rf_width)
    u, v, w = G[..., 0], G[..., 1], G[..., 2]
    return u, v, w


def main():
    # Define your electrodes here. Each electrode is defined by a center (x, y, z) and dimensions (dx, dy, dz).

    import json
    import models
    from pathlib import Path

    root = Path(models.__file__).resolve().parent
    print(root)
    with open(root / "surface_trap" / "surface_trap_geometry.json", 'r') as fp:
        ed = json.load(fp)

    def to_center_width(pp, x_clip=None, y_clip=None, z=-5, dz=10, gap=0):
        if x_clip is not None:
            np.clip(pp[:, 0], *x_clip, out=pp[:, 0])
        if y_clip is not None:
            np.clip(pp[:, 1], *y_clip, out=pp[:, 1])
        return (
            (pp[:, 0].mean(), -pp[:, 1].mean(), z),
            pp[:, 0].ptp() - gap / 2,
            pp[:, 1].ptp() - gap / 2,
            dz
        )

    electrodes = {}
    kw = dict(x_clip=(-500, 500), y_clip=(-375, 375), gap=10)
    for name, rings in ed.items():
        if name == 'RF':
            pp = np.asarray(rings[0][:4])
            electrodes['RF1'] = to_center_width(pp, **kw)
            pp = np.asarray(rings[0][5:9])
            electrodes['RF2'] = to_center_width(pp, **kw)
        else:
            pp = np.asarray(rings[0][:-1])
            electrodes[name] = to_center_width(pp, **kw)

    plotter = pv.Plotter()

    for name, ee in electrodes.items():
        p3d.plot_electrode(plotter, *ee)

    # Create the grid for the vector field
    x, y, z = np.mgrid[0:0:1j, -200:200:30j, 10:200:30j]
    # u, v, w = electric_field(x, y, z)
    # p3d.plot_vector_field(plotter, x, y, z, u, v, w, factor=12, cmap='Greens', clim=(800, 15000))

    plotter.add_axes(color='k')
    # plotter.show(screenshot="figures/surface_trap.png")

    def screenshot(plotter):
        plotter.screenshot("figures/surface_trap.png")

    plotter.show(before_close_callback=screenshot)


if __name__ == '__main__':
    main()
