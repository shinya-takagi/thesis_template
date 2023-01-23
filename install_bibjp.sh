#!/bin/bash

ROOT_DIR="$(git rev-parse --show-toplevel)"

# Install biblatex-japanese
BIBLATEXJP_STYLE="biblatex-japanese.sty"
BIBLATEXJP_URL="https://github.com/kmaed/biblatex-japanese"
BIBLATEXJP_DIR="${ROOT_DIR}/biblatex-japanese/latex"
BIBLATEXJP_FILES="biblatex-japanese.def $BIBLATEXJP_STYLE lbx/japanese.lbx"

if [ ! -d "biblatex-japanese" ]; then
  git clone "$BIBLATEXJP_URL"
fi

if [ ! -f "$BIBLATEXJP_STYLE" ]; then
  for f in $BIBLATEXJP_FILES; do
    cp "$BIBLATEXJP_DIR"/"$f" ${ROOT_DIR}/
  done
fi
