#!/usr/bin/env bash
# Rebuild price-book.html from the per-page markdown files (requires pandoc).
set -euo pipefail
cd "$(dirname "$0")"
pandoc pages/page-*.md \
  --from gfm --to html5 --standalone --toc --toc-depth=1 \
  --metadata-file metadata.yaml \
  --css style.css --embed-resources \
  -o price-book.html
# wrap wide tables so they scroll horizontally on small screens
sed -i 's#<table>#<div class="table-wrap"><table>#g; s#</table>#</table></div>#g' price-book.html
# render ^1-style footnote markers as superscripts
sed -i -E 's# ?\^([0-9]+)#<sup>\1</sup>#g' price-book.html
echo "wrote price-book.html"
