#!/usr/bin/env bash
# -*- coding: utf-8; fill-column: 72; mode: sh; -*-

# Get installed fonts
FONTS=$(fc-list)
# Check for all cm-unicode files:
if ! grep -q 'cmunbbx.ttf' <<< "$FONTS" || \
	! grep -q 'cmunbi.ttf' <<< "$FONTS" || \
	! grep -q 'cmunbl.ttf' <<< "$FONTS" || \
	! grep -q 'cmunbmo.ttf' <<< "$FONTS" || \
	! grep -q 'cmunbmr.ttf' <<< "$FONTS" || \
	! grep -q 'cmunbso.ttf' <<< "$FONTS" || \
	! grep -q 'cmunbsr.ttf' <<< "$FONTS" || \
	! grep -q 'cmunbtl.ttf' <<< "$FONTS" || \
	! grep -q 'cmunbto.ttf' <<< "$FONTS" || \
	! grep -q 'cmunbx.ttf' <<< "$FONTS" || \
	! grep -q 'cmunbxo.ttf' <<< "$FONTS" || \
	! grep -q 'cmunci.ttf' <<< "$FONTS" || \
	! grep -q 'cmunit.ttf' <<< "$FONTS" || \
	! grep -q 'cmunobi.ttf' <<< "$FONTS" || \
	! grep -q 'cmunobx.ttf' <<< "$FONTS" || \
	! grep -q 'cmunorm.ttf' <<< "$FONTS" || \
	! grep -q 'cmunoti.ttf' <<< "$FONTS" || \
	! grep -q 'cmunrb.ttf' <<< "$FONTS" || \
	! grep -q 'cmunrm.ttf' <<< "$FONTS" || \
	! grep -q 'cmunsi.ttf' <<< "$FONTS" || \
	! grep -q 'cmunsl.ttf' <<< "$FONTS" || \
	! grep -q 'cmunso.ttf' <<< "$FONTS" || \
	! grep -q 'cmunss.ttf' <<< "$FONTS" || \
	! grep -q 'cmunssdc.ttf' <<< "$FONTS" || \
	! grep -q 'cmunst.ttf' <<< "$FONTS" || \
	! grep -q 'cmunsx.ttf' <<< "$FONTS" || \
	! grep -q 'cmuntb.ttf' <<< "$FONTS" || \
	! grep -q 'cmunti.ttf' <<< "$FONTS" || \
	! grep -q 'cmuntt.ttf' <<< "$FONTS" || \
	! grep -q 'cmuntx.ttf' <<< "$FONTS" || \
	! grep -q 'cmunui.ttf' <<< "$FONTS" || \
	! grep -q 'cmunvi.ttf' <<< "$FONTS" || \
	! grep -q 'cmunvt.ttf' <<< "$FONTS"; then
    wget https://sourceforge.net/projects/cm-unicode/files/cm-unicode/0.7.0/cm-unicode-0.7.0-ttf.tar.xz
    tar -xf cm-unicode-0.7.0-ttf.tar.xz
    cd cm-unicode-0.7.0
    sudo mkdir -p /usr/local/share/fonts/cm-unicode
    sudo cp *.ttf /usr/local/share/fonts/cm-unicode
    sudo fc-cache -fv /usr/local/share/fonts
    cd ..
fi
