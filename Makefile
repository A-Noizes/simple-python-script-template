PYTHON=python
UV=uv
TOML=pyproject.toml

.PHONY: install init test run run-module venv

install:
	$(UV) pip install -r $(TOML)

test:
	pytest -q 

init:
	$(UV) pip install -r $(TOML)

venv:
	$(UV) venv .

run:
	$(UV) sync
	$(UV) run python-cli-template


