#!/usr/bin/env bash

# Pull latest master and generate a new content

SCRIPT="$(readlink -f "$0")"
DIR="$(dirname "$SCRIPT")"
if [[ ! -d "$DIR/venv/" ]]; then
    echo "Please init venv in '$DIR'"
    exit 1
fi

git --git-dir="$DIR/.git" fetch origin master
git --git-dir="$DIR/.git" reset --hard FETCH_HEAD
source "$DIR/venv/bin/activate"
pelican --delete-output-directory --ignore-cache -s "$DIR/pelicanconf.py"
deactivate
