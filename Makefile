.PHONY: test

default: test

test:
	poetry run pytest -c pyproject.toml tests/

test-notebooks:
	poetry run pytest -c pyproject.toml --nbmake examples/