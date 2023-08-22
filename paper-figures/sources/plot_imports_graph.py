#!/usr/bin/env python
# -*- coding:utf-8 -*-
#
# Created: 08/2023
# Author: Carmelo Mordini <cmordini@phys.ethz.ch>


import pytrans
import pygraphviz
from import_deps import ModuleSet
from pathlib import Path


def plot(figname):

    pytrans_module_root = Path(pytrans.__file__).resolve().parent

    def get_imports(pkg_modules, module_path):
        module = pkg_modules.by_path[module_path]
        imports = pkg_modules.get_imports(module, return_fqn=True)
        return list(sorted(imports))

    def _imports(module_root):
        """find imports from a python module"""
        base_path = Path(module_root)
        pkg_modules = ModuleSet(base_path.glob('**/*.py'))
        imports = {}
        for _, module in pkg_modules.by_name.items():
            importname = '.'.join(module.fqn)
            imports[importname] = get_imports(pkg_modules, module.path)
        return imports

    imports = _imports(pytrans_module_root)

    graph = pygraphviz.AGraph(strict=False, directed=True)
    graph.node_attr['style'] = 'filled'
    graph.node_attr['color'] = 'lightblue2'
    for source, sinks in imports.items():
        if source.endswith('__init__'):
            color = 'lightyellow'
            source = source[:-9]
        else:
            color = 'lightblue2'
        for sink in sinks:
            graph.add_edge(source, sink)
            node = graph.get_node(source)
            node.attr['color'] = color

    graph.layout(prog="dot")  # , args="-Nshape=box -Efontsize=6")

    # dotfile = 'pytrans.dot'
    # graph.write(dotfile)

    graph.draw(figname)
