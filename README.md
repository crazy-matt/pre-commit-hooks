# pre-commit-hooks

A collection of useful pre-commit hooks for various languages and tools.

## Installation

```bash
pre-commit --version
git config --unset-all core.hooksPath
pre-commit install
pre-commit install --hook-type pre-push
pre-commit install --hook-type commit-msg
pre-commit autoupdate
```

> Set up your `.pre-commit-config.yaml` using the [template configurations](./config-templates) as inspiration.

## List of hooks

See this [registry](./.pre-commit-hooks.yaml) for the list of hooks provided by this repository.
