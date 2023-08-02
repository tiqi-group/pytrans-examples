#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 08/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>

import numpy as np
import pyvista as pv
from plotting import plot3d as p3d


def main():
    pv.set_plot_theme('document')
    plotter = pv.Plotter()

    # Plot the electrode
    p3d.plot_electrode(plotter, center=(50, 0, 0), x_length=300, y_length=100, z_length=10)

    x, y, z = np.mgrid[-100:100:200j, -30:30:100j, 0:100:100j]
    wavelength = 0.532  # Wavelength of the laser
    w0 = 1.3  # Beam waist
    zR = np.pi * w0**2 / wavelength  # Rayleigh range
    focus = (0, 0, 70)
    theta = 30 * np.pi / 180

    n1 = (-np.sin(theta), 0, np.cos(theta))
    p3d.plot_gaussian_beam(plotter, x, y, z, focus, n1, w0, zR)

    n1 = (np.sin(theta), 0, np.cos(theta))
    p3d.plot_gaussian_beam(plotter, x, y, z, focus, n1, w0, zR)

    # Add the example electric field vector
    # x, y, z = np.mgrid[-5:5:10j, -5:5:10j, 0:10:10j]
    # u, v, w = -y / 5, x / 5, np.zeros_like(z)

    # Plot the vector field
    # plot_vector_field(plotter, x, y, z, u, v, w)

    plotter.add_axes(color='k')
    # plotter.save_graphic("figures/beams.png")

    def screenshot(plotter):
        plotter.screenshot("figures/beams.png")

    plotter.show(before_close_callback=screenshot)


if __name__ == '__main__':
    main()
