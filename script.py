"""Simple script template

Small single-file Python script template with a short module-level
docstring describing purpose and usage.

Usage:
    template --name Alice

This file is intentionally minimal so it's easy to adapt for quick
utility scripts or small command-line tasks.
"""

from __future__ import annotations

import argparse
import sys


def parse_args(argv: list[str] | None = None) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Simple script template")
    parser.add_argument("--name", "-n", default="World", help="Name to greet")
    return parser.parse_args(argv)


def main(argv: list[str] | None = None) -> int:
    args = parse_args(argv)
    print(f"Hello, {args.name}!")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
