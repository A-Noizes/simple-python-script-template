ENV_NAME ?= py-script-template
YAML = environment.yml

.PHONY: env-create env-update env-remove install run test

env-create:
	@echo "Creating conda environment '$(ENV_NAME)' from $(YAML)"
	conda env create -f $(YAML) -n $(ENV_NAME) || conda env update -f $(YAML) -n $(ENV_NAME)

env-update:
	@echo "Updating conda environment '$(ENV_NAME)' from $(YAML)"
	conda env update -f $(YAML) -n $(ENV_NAME)

env-remove:
	@echo "Removing conda environment '$(ENV_NAME)'"
	conda env remove -n $(ENV_NAME) --yes

install:
	@echo "Installing dependencies (pip) into '$(ENV_NAME)'"
	conda run -n $(ENV_NAME) python -m pip install -r requirements.txt || true

run:
	@echo "Running script with conda run -n $(ENV_NAME)"
	conda run -n $(ENV_NAME) python script.py

test:
	@echo "Running tests with pytest inside '$(ENV_NAME)'"
	conda run -n $(ENV_NAME) pytest -q
