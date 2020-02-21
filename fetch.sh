#!/usr/bin/env bash

# Pull latest master and generate a new content
git pull
pelican -s pelicanconf.py
