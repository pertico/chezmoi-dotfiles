#!/usr/bin/env bash
set -euo pipefail

if command -v brew &> /dev/null && [ -f "$HOME/.homebrew/etc/Brewfile" ]; then
    brew bundle --file="$HOME/.homebrew/etc/Brewfile"
fi
