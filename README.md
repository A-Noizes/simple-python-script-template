# Simple Python Script Template

This is a minimal template for single-file Python scripts. It provides a small, documented entrypoint script, a Conda environment file, and convenient Makefile shortcuts to create/update the environment and run the script.

Quickstart

1. Create the Conda environment using the Makefile:

```bash
make env-create
conda activate py-script-template
make install
```

Or directly:

```bash
conda env create -f environment.yml
conda activate py-script-template
python script.py --help
```

Available make targets

- `make env-create` : Create the Conda environment from `environment.yml`.
- `make env-update` : Update the Conda environment from `environment.yml`.
- `make env-remove` : Remove the Conda environment.
- `make install`    : Install dependencies with `pip` inside the environment.
- `make run`        : Run the script using `conda run -n <env>`.
- `make test`       : Run tests with `pytest` (if added).

Files included

- `script.py` — example single-file script with docstring and CLI.
- `environment.yml` — Conda environment specification.
- `Makefile` — helper commands for environment management and running the script.
- `.gitignore` — recommended ignores for Python projects.

Customization

Change the environment name and dependencies in `environment.yml` to match your project. Edit `script.py` to implement your script logic.

License

MIT
