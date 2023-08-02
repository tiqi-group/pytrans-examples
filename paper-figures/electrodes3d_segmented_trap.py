#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 08/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


import numpy as np
from mayavi import mlab
from models.segmented_trap.model import SegmentedTrapRFElectrode

RF = SegmentedTrapRFElectrode()


def plot_electrode(x, y, z, dx, dy, dz):
    """Creates a rectangular prism representing an electrode at given center (x,y,z)
    with dimensions (dx, dy, dz)"""
    X, Y, Z = np.mgrid[x - dx / 2:x + dx / 2:2j, y - dy / 2:y + dy / 2:2j, z - dz / 2:z + dz / 2:2j]
    scalar_field = np.zeros(X.shape)  # scalar values
    # Set the color to golden and the opacity to 0.8
    return mlab.pipeline.surface(mlab.pipeline.scalar_field(X, Y, Z, scalar_field), color=(1, 0.84, 0), opacity=0.8)


def plot_electric_field(x, y, z):

    # Calculate the vector field
    u, v, w = electric_field(x, y, z)

    # Set the color to gray and the scale factor to reduce the length of the vectors
    mlab.quiver3d(x, y, z, u, v, w, color=(0.5, 0.5, 0.5))


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
    # Define your electrodes here. Each electrode is defined by a center (x, y, z) and dimensions (dx, dy, dz).

    import json
    with open(r"C:\Users\carmelo\eth\projects\pytrans-examples\models\segmented_trap\segmented_trap_geometry.json", 'r') as fp:
        ed = json.load(fp)

    hh = 150
    electrodes = {}
    for name, pp in ed.items():
        pp = np.asarray(pp[0][:-1])
        # if name.startswith('DCCc'):
        z = -hh / 2 if name.startswith('DCCc') else hh / 2
        electrodes[name] = (pp[:, 0].mean(), -pp[:, 1].mean(), z,
                            pp[:, 0].ptp(), pp[:, 1].ptp(), 10)

    electrodes['RF1'] = (0, 200, -hh / 2, 650, 250, 10)
    electrodes['RF2'] = (0, -200, hh / 2, 650, 250, 10)

    mlab.figure(size=(1200, 800), bgcolor=(1, 1, 1))

    for name, ee in electrodes.items():
        print(name, ee)
        plot_electrode(*ee)

    # Create the grid for the vector field
    x, y, z = np.mgrid[-325:325:10j, -3:3:10j, -3:3:10j]
    plot_electric_field(x, y, z)
    mlab.orientation_axes()
    # mlab.view(azimuth=45, elevation=80, distance=50, focalpoint=(0, 0, 0))

    mlab.view()
    mlab.move(forward=None, right=0, up=0)
    mlab.show()


def print_lims():
    print(RF._interp.xIntMin * 1e6, RF._interp.xIntMax * 1e6)
    print(RF._interp.yIntMin * 1e6, RF._interp.yIntMax * 1e6)
    print(RF._interp.zIntMin * 1e6, RF._interp.zIntMax * 1e6)


if __name__ == '__main__':
    print_lims()
    main()
