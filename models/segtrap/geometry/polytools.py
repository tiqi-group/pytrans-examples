#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 05/2022
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


import numpy as np
from matplotlib.path import Path
from matplotlib.patches import PathPatch
from matplotlib.collections import PatchCollection
from shapely.geometry import Polygon, MultiPolygon
from shapely.geometry.polygon import orient


def get_rect_polygon(xy, w, h, anchor):
    x, y = xy
    if anchor == 'bottom':
        points = [
            [x - w / 2, y],
            [x + w / 2, y],
            [x + w / 2, y + h],
            [x - w / 2, y + h],
        ]
    elif anchor == 'top':
        points = [
            [x - w / 2, y],
            [x - w / 2, y - h],
            [x + w / 2, y - h],
            [x + w / 2, y],
        ]
    elif anchor == 'center':
        points = [
            [x - w / 2, y - h / 2],
            [x + w / 2, y - h / 2],
            [x + w / 2, y + h / 2],
            [x - w / 2, y + h / 2],
        ]
    return Polygon(points)


def get_oriented_coords(poly, sign=1.0):
    assert isinstance(poly, (Polygon, MultiPolygon))
    coords = []
    polys = poly.geoms if isinstance(poly, MultiPolygon) else [poly]
    for poly in polys:
        poly = orient(poly, sign=sign)
        coords.append(list(poly.exterior.coords))
        for ring in poly.interiors:
            coords.append(list(ring.coords))
    return coords


def plot_polygon(ax, poly, **kwargs):
    """Plots a Polygon to pyplot `ax`
    https://stackoverflow.com/a/70533052
    """

    assert isinstance(poly, (Polygon, MultiPolygon))
    patches = []
    polys = poly.geoms if isinstance(poly, MultiPolygon) else [poly]
    for poly in polys:
        path = Path.make_compound_path(
            Path(np.asarray(poly.exterior.coords)[:, :2]),
            *[Path(np.asarray(ring.coords)[:, :2]) for ring in poly.interiors])

        patch = PathPatch(path, **kwargs)
        patches.append(patch)
    collection = PatchCollection(patches, **kwargs)

    ax.add_collection(collection, autolim=True)
    ax.autoscale_view()
    return collection
