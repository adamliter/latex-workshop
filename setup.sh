#!/usr/bin/env bash
# -*- coding: utf-8; mode: sh; fill-column: 72; -*-

for f in ./git-hooks/*; do
    cp "${f}" "./.git/hooks/$(basename ${f})"
done 
