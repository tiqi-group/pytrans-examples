#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 04/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


# trap geometry parameters
um = 1e-6
rf_width = 120 * um
rf_sep = 50 * um
rf_length = 3000 * um

dc_width = 100 * um
dc_length = 1300 * um

filename = "surface_trap_geometry.json"


corners = {  # (x1, x2, y1, y2)
    "E1": (-dc_width, 0, (rf_sep / 2 + rf_width), (rf_sep / 2 + rf_width + dc_length)),
    "E2": (0, dc_width, (rf_sep / 2 + rf_width), (rf_sep / 2 + rf_width + dc_length)),
    "E3": (-dc_width, 0, -(rf_sep / 2 + rf_width + dc_length), -(rf_sep / 2 + rf_width)),
    "E4": (0, dc_width, -(rf_sep / 2 + rf_width + dc_length), -(rf_sep / 2 + rf_width)),
}


def ring_from_corners(corners):
    x1, x2, y1, y2 = map(lambda x: x / um, corners)
    ring = [[x1, y1], [x2, y1], [x2, y2], [x1, y2], [x1, y1]]
    return ring


if __name__ == '__main__':
    import json

    json_geometry = {name: [ring_from_corners(_corners)] for name, _corners in corners.items()}

    rf_bot_corners = (-rf_length / 2, rf_length / 2, -(rf_sep / 2 + rf_width), -rf_sep / 2)
    rf_top_corners = (-rf_length / 2, rf_length / 2, rf_sep / 2, (rf_sep / 2 + rf_width))

    json_geometry["RF"] = [ring_from_corners(rf_bot_corners) + ring_from_corners(rf_top_corners)]

    with open(filename, 'w') as f:
        json.dump(json_geometry, f, indent=2)
