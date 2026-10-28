#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_hook_registry info
PYTHONPATH=src python -m gbt_hook_registry check --payload '{}'
PYTHONPATH=src python -m gbt_hook_registry run   --payload '{}'
