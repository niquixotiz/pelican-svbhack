#!/usr/bin/env bash

# Pull latest master and generate a new content
git pull
source venv/bin/activate
pelican -s pelicanconf.py
