#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 08/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


import numpy as np
from mayavi import mlab
from models.surface_trap.geometry import rf_sep, rf_width
from rectset import pseudopotential as ps


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


def plot_field_lines(x, y, z):
    """Visualizes the electric field using streamlines (flow lines)"""
    u, v, w = electric_field(x, y, z)
    src = mlab.pipeline.vector_field(x, y, z, u, v, w)
    mlab.pipeline.streamline(src, line_width=1.0, opacity=0.8)


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


def gaussian_beam():
    """Generates a 3D Gaussian laser beam distribution."""
    # Calculate the beam amplitude at each point in space

    # def beam(x, y, z, z0, sigma_x, sigma_y):
    #     amplitude = np.exp(-((x**2) / (2 * sigma_x**2) + (y**2) / (2 * sigma_y**2)))
    #     return amplitude * np.exp(-((z - z0)**2) / (2 * sigma_y**2))

    def beam(x, y, z, z0, w0, zR):
        """Calculates the intensity of a Gaussian beam in the paraxial approximation."""
        r = np.sqrt(x**2 + y**2)
        w = w0 * np.sqrt(1 + ((z - z0) / zR)**2)
        return (w0 / w)**2 * np.exp(-2 * r**2 / w**2)

    # Define the properties of the laser beam
    focus_height = 70  # The height at which the beam is focused
    emission_angle = 30  # The angle at which the beam is emitted, in degrees

    # Convert the emission angle to radians
    emission_angle = np.radians(emission_angle)

    # Calculate the position of the beam waist
    z0 = focus_height / np.cos(emission_angle)

    # Calculate the standard deviations of the Gaussian distribution

    wavelength = 0.532
    w0 = 1.3  # Beam waist
    zR = np.pi * w0**2 / wavelength  # Rayleigh range
    print(zR)

    # Generate a grid of points at which to calculate the beam amplitude
    x = np.linspace(-100, 100, 100)
    y = np.linspace(-100, 100, 100)
    z = np.linspace(0, 2 * focus_height, 200)
    x, y, z = np.meshgrid(x, y, z, indexing='ij')

    # Rotate the beam by the emission angle
    z_rotated = z * np.cos(emission_angle) - y * np.sin(emission_angle)
    y_rotated = z * np.sin(emission_angle) + y * np.cos(emission_angle)

    # Calculate the beam amplitude at each point
    amplitude = beam(x, y_rotated, z_rotated, z0, w0, zR)

    # Plot the beam
    mlab.contour3d(x, y, z, amplitude, contours=30, opacity=0.35)


def plot_axes():
    axes = mlab.axes(color=(0, 0, 0), xlabel="X", ylabel="Y", zlabel="Z")
    axes.property.color = (0, 0, 0)  # set axis color to black
    axes.title_text_property.color = (0, 0, 0)  # set axis titles color to black
    axes.label_text_property.color = (0, 0, 0)  # set labels color to black
    return axes


def main():
    # Define your electrodes here. Each electrode is defined by a center (x, y, z) and dimensions (dx, dy, dz).

    import json
    from pathlib import Path

    root = Path(r"C:\Users\carmelo\eth\projects\pytrans-examples\models")
    with open(root / "surface_trap" / "surface_trap_geometry.json", 'r') as fp:
        ed = json.load(fp)

    gap = 10

    def to_center_width(pp, z=-5, dz=10, gap=gap):
        return (pp[:, 0].mean(), -pp[:, 1].mean(), z,
                pp[:, 0].ptp() - gap / 2, pp[:, 1].ptp() - gap / 2, 10)

    electrodes = {}
    for name, rings in ed.items():
        if name == 'RF':
            pp = np.asarray(rings[0][:4])
            electrodes['RF1'] = to_center_width(pp)
            pp = np.asarray(rings[0][5:9])
            electrodes['RF2'] = to_center_width(pp)
        else:
            pp = np.asarray(rings[0][:-1])
            electrodes[name] = to_center_width(pp)

    mlab.figure(size=(1200, 800), bgcolor=(1, 1, 1))

    # for name, ee in electrodes.items():
    #     print(name, ee)
    #     plot_electrode(*ee)

    # Create the grid for the vector field
    # x, y, z = np.mgrid[-325:325:10j, -100:100:10j, 0:100:10j]

    # plot_electric_field(x, y, z)
    # plot_field_lines(x, y, z)

    plot_electrode(0, 0, -5, 100, 100, 10)

    gaussian_beam()

    plot_axes()

    mlab.orientation_axes()
    # mlab.view(azimuth=45, elevation=80, distance=50, focalpoint=(0, 0, 0))

    mlab.view()
    mlab.move(forward=None, right=0, up=0)
    mlab.show()


if __name__ == '__main__':
    main()
