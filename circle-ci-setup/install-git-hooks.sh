#!/usr/bin/env bash
# -*- coding: utf-8; mode: sh; fill-column: 72; -*-

mkdir -p .git/hooks

for f in git-hooks/*; do
    ln -sf "../../${f}" ".git/hooks/"
done
