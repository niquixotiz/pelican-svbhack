#!/usr/bin/env bash

# Fetch latest master and generate a new content

DIR="$1"
if [[ "$DIR" == "" ]]; then
    echo "Please provide path to project root as a first argument"
    exit 1
fi

if [[ ! -d "$DIR" ]]; then
    echo "Could not find project dir at $DIR"
    exit 1
fi

if [[ ! -d "$DIR/venv/" ]]; then
    echo "Please init venv with pelican and dependencies in '$DIR'"
    exit 1
fi

cd "$DIR"
git fetch origin master
git reset --hard FETCH_HEAD
source "$DIR/venv/bin/activate"
pelican --verbose -t "$DIR" -o "$DIR/output" --delete-output-directory --ignore-cache -s "$DIR/pelicanconf.py"
deactivate
