.PHONY: test install_pygraphviz

default: test

test:
	poetry run pytest tests/ -c pyproject.toml

install_pygraphviz:
	poetry run python -m pip install --use-pep517 --config-settings="--global-option=build_ext" --config-settings="--global-option=-IC:\users\cmordini\scoop\apps\graphviz\current\include" --config-settings="--global-option=-LC:\users\cmordini\scoop\apps\graphviz\current\lib" pygraphviz
