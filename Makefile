.PHONY: test test-notebooks

default: test-notebooks

test:
	poetry run pytest -c pyproject.toml tests/

test-notebooks:
	poetry run pytest -c pyproject.toml --nbmake examples/