#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Create: 03-2020 - Carmelo Mordini <carmelo> <carmelo.mordini@unitn.it>

from pathlib import Path
from importlib import import_module
import matplotlib.pyplot as plt
from doit import get_var

from plotting.settings import data_dir


DOIT_CONFIG = {
    'verbosity': 2,
    'default_tasks': [
        'plot',
    ]
}

sources = Path('sources')
modules = {m.stem[5:]: import_module(f"{sources}.{m.stem}")
           for m in sources.glob('plot_*.py')}

templates = {
    'transport': 'sources/fig_transport_template_twocolumns.svg',
    'traps': 'sources/fig_traps_template.svg'
}

fig_format = get_var('format', 'pdf')
show = get_var('show', False)

common_deps = ['plotting/cpc.mplstyle'] + list(data_dir.iterdir())


def task_plot():
    for name, module in modules.items():
        figname = f"figures/fig_{name}.{fig_format}"
        actions = [(module.plot, [figname], {})]
        file_dep = [module.__file__] + common_deps
        if show:
            actions += [plt.show]
        if name in templates:
            file_dep += [templates[name]]
        yield {
            'name': name,
            'actions': actions,
            'file_dep': file_dep,
            'targets': [figname]
        }


def task_cleanfigs():
    def cleanfigs():
        for p in Path('figures').glob(f"fig_*.{fig_format}"):
            print(f"Deleting {p}")
            p.unlink()
    return {
        'actions': [cleanfigs]
    }
