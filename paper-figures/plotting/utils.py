#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 08/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


import matplotlib.pyplot as plt


def label_subplots(fig=None, axes=None, xpos=-0.05, ypos=0.05, scale_text=1.15, letters=None, style='brackets', weight='normal'):
    """
    weight: [ 'normal' | 'bold' | 'heavy' | 'light' | 'ultrabold' | 'ultralight' ]
    style:  ['brackets' : '({x:s})',
             'dotted': '{x:s}.',
             or a custom string with the same format]
    """
    if axes is None:
        fig = plt.gcf() if fig is None else fig
        axes = fig.axes
    else:
        fig = axes[0].figure
    size = plt.rcParams['font.size'] * scale_text
    letters = list(map(chr, range(97, 97 + len(axes)))
                   ) if letters is None else letters
    if style == 'brackets':
        labeltext = '({x:s})'
    elif style == 'dotted':
        labeltext = '{x:s}.'
    else:
        labeltext = style
    for ax, label in zip(axes, letters):
        # place text wrt to upper left corner of the selected axis
        axis_to_figure = ax.transAxes + fig.transFigure.inverted()
        x, y = axis_to_figure.transform([0, 1])
        # x, y = axis_to_figure.inverted().transform([x + xpos, y + ypos])
        x, y = x + xpos, y + ypos
        ax.text(x, y, labeltext.format(x=label), ha='center', va='center',
                # family='sans-serif',
                weight=weight,
                fontsize=size,
                transform=fig.transFigure,
                )
