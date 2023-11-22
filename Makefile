.PHONY: test test-notebooks docs

default: test-notebooks

test:
	poetry run pytest -c pyproject.toml tests/

test-notebooks:
	poetry run pytest -c pyproject.toml --nbmake examples/

docs:
	poetry run mkdocs serve -f .\deps\pytrans\mkdocs.yml