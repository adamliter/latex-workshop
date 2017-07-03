#!/usr/bin/env bash
# -*- coding: utf-8; fill-column: 72; mode: sh; -*-

# Install basic TeX Live if not still cached
if ! command -v tlmgr >/dev/null 2>&1; then
    wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
    tar -xzf install-tl-unx.tar.gz
    cd install-tl-20*
    ./install-tl --profile=../circle-ci-setup/texlive.profile
    cd ..
fi

# Required to build plain and LaTeX formats
tlmgr install cm etex knuth-lib latex-bin tex tex-ini-files \
      unicode-data xetex

# Assuming a 'basic' font set up, metafont is required to avoid
# warnings with some packages and errors with others
tlmgr install metafont mfware

# Set up graphics: nowadays split over a few places and requiring
# HO's bundle
tlmgr install graphics graphics-cfg graphics-def oberdiek

# Install packages used in document
tlmgr install \
      amsfonts \
      amsmath \
      arara \
      arydshln \
      bbding \
      bigfoot \
      booktabs \
      caption \
      colortbl \
      datatool \
      enumitem \
      environ \
      eso-pic \
      etoolbox \
      fancyhdr \
      fancyvrb \
      float \
      fontspec \
      forest \
      fp \
      framed \
      fvextra \
      gb4e \
      geometry \
      gitinfo2 \
      glossaries \
      hyperref \
      ifluatex \
      ifplatform \
      ifxetex \
      inlinedef \
      lastpage \
      leipzig \
      lineno \
      mfirstuc \
      minted \
      ot-tableau \
      parskip \
      pgf \
      pgfopts \
      substr \
      textcase \
      textglos \
      titlesec \
      tools \
      trimspaces \
      upquote \
      url \
      xcolor \
      xfor \
      xkeyval \
      xstring \
      zapfding

# Keep no backups (not required, simply makes cache bigger)
tlmgr option -- autobackup 0

# Update the TL install but add nothing new
tlmgr update --self --all --no-auto-install
