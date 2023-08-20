#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Create: 03-2020 - Carmelo Mordini <carmelo> <carmelo.mordini@unitn.it>

from pathlib import Path
from importlib import import_module
import matplotlib.pyplot as plt
from doit import get_var


DOIT_CONFIG = {
    'verbosity': 2,
    'default_tasks': [
        'plot',
    ]
}

sources = Path('sources')
modules = {m.stem[5:]: import_module(f"{sources}.{m.stem}")
           for m in sources.glob('plot_*.py')}

fig_format = 'png'
SHOW = get_var('show', False)


def task_plot():
    for name, module in modules.items():
        figname = f"figures/fig_{name}.{fig_format}"
        actions = [(module.plot, [figname], {})]
        if SHOW:
            actions += [plt.show]
        yield {
            'name': name,
            'actions': actions,
            'file_dep': [module.__file__],
            'targets': [figname]
        }


def task_cleanfigs():
    def cleanfigs():
        for p in Path('figures').glob(f"fig_*.{fig_format}"):
            p.unlink()
    return {
        'actions': [cleanfigs]
    }
