#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 08/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


import numpy as np
import pyvista as pv


def plot_electrode(plotter, center=(0.0, 0.0, 0.0), x_length=1.0, y_length=1.0, z_length=1.0, bounds=None, color='gold', opacity=0.8):
    """
    Add a rectangular prism representing an electrode to the plotter.

    Parameters:
    plotter: pyvista.Plotter
        The Plotter object to which the electrode will be added.
    center: tuple
        The (x, y, z) coordinates of the center of the electrode.
    x_length, y_length, z_length: float
        The lengths of the electrode along the x, y, and z axes.
    color: str, optional
        The color of the electrode. Defaults to 'gold'.
    opacity: float, optional
        The opacity of the electrode. Defaults to 0.8.
    """
    electrode = pv.Cube(center=center, x_length=x_length, y_length=y_length, z_length=z_length, bounds=bounds)
    plotter.add_mesh(electrode, color=color, opacity=opacity)


def gaussian_beam(x, y, z, r0, n, w0, zR):
    """
    Calculate the intensity of a Gaussian beam in the paraxial approximation.

    Parameters:
    x, y, z: ndarray
        Grid of points at which to calculate the beam intensity.
    r0: tuple
        The (x, y, z) coordinates of the focus of the beam.
    n: ndarray
        The propagation direction of the beam.
    w0: float
        The waist of the beam.
    zR: float
        The Rayleigh range of the beam.

    Returns:
    ndarray: The intensity of the Gaussian beam at each point in the grid.
    """
    # Ensure that n is a unit vector
    n = n / np.linalg.norm(n)
    # Calculate the vectors from the grid points to the focus
    v = np.array([x - r0[0], y - r0[1], z - r0[2]])
    # Project v onto n to get the distance along the beam axis
    d = np.sum(v * np.array(n)[:, None, None, None], axis=0)
    # Calculate the vector from the beam axis to each point in the grid
    v_perp = v - np.array(n)[:, None, None, None] * d
    # Calculate the radial distance from the beam axis
    r = np.sqrt(np.sum(v_perp**2, axis=0))
    # Calculate the beam width and intensity
    w = w0 * np.sqrt(1 + (d / zR)**2)
    intensity = (w0 / w)**2 * np.exp(-2 * r**2 / w**2)
    return intensity


def plot_gaussian_beam(plotter, x, y, z, r0, n, w0, zR, opacity=0.45, cmap="Reds"):
    """
    Add a thresholded scalar field representing a Gaussian beam to the plotter.

    Parameters:
    plotter: pyvista.Plotter
        The Plotter object to which the beam will be added.
    x, y, z: ndarray
        Grid of points at which to calculate the beam intensity.
    r0: tuple
        The (x, y, z) coordinates of the focus of the beam.
    n: ndarray
        The propagation direction of the beam.
    w0: float
        The waist of the beam.
    zR: float
        The Rayleigh range of the beam.
    opacity: float, optional
        The opacity of the beam. Defaults to 0.45.
    cmap: str, optional
        The colormap to use for the beam. Defaults to "Reds".
    """
    grid = pv.RectilinearGrid(x[:, 0, 0], y[0, :, 0], z[0, 0, :])
    beam_intensity = gaussian_beam(x, y, z, r0, n, w0, zR)
    grid["intensity"] = beam_intensity.flatten("F")  # Add intensity as a field
    grid.set_active_scalars("intensity")
    contour = grid.contour([1e-3, 0.1, 0.85])
    plotter.add_mesh(contour, opacity=opacity, cmap=cmap, show_scalar_bar=False)


def plot_vector_field(plotter, x, y, z, u, v, w, factor=0.5, **kwargs):
    """
    Add a vector field to the plotter.

    Parameters:
    plotter: pyvista.Plotter
        The Plotter object to which the vector field will be added.
    x, y, z: ndarray
        Grid of points at which to calculate the vector field.
    u, v, w: ndarray
        The x, y, and z components of the vectors.
    color: str, optional
        The color of the vectors. Defaults to 'gray'.
    factor: float, optional
        The scaling factor applied to the vectors. Defaults to 0.5.
    """
    grid = pv.StructuredGrid(x, y, z)
    v = np.stack([u.flatten("F"), v.flatten("F"), w.flatten("F")], axis=-1)
    grid["magnitude"] = np.sqrt(np.sum(v**2, axis=-1))
    grid["vectors"] = v
    # print(grid['magnitude'].min(), grid['magnitude'].max())
    arrows = grid.glyph(orient="vectors", scale=False, factor=factor)
    plotter.add_mesh(arrows, scalars="magnitude", show_scalar_bar=False, **kwargs)
