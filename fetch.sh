#!/usr/bin/env bash

# Pull latest master and generate a new content

SCRIPT="$(readlink -f "$0")"
DIR="$(dirname "$SCRIPT")"
if [[ ! -d venv/ ]]; then
    echo "Please init venv in '$DIR'"
    exit 1
fi

git pull
source "$DIR/venv/bin/activate"
pelican -s "$DIR/pelicanconf.py"
