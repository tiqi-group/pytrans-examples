.PHONY: test

default: test

test:
	poetry run pytest tests/ -c pyproject.toml
