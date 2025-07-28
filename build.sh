#!/bin/bash
# build.sh - Build script for LaTeX resume on macOS/Linux

# Exit on error
set -e

FILENAME="FrankLaterzaFall2025"

echo "Building PDF..."
pdflatex "$FILENAME.tex"
pdflatex "$FILENAME.tex"

echo "Cleaning up auxiliary files..."
rm -f "$FILENAME.aux" "$FILENAME.log" "$FILENAME.out" "$FILENAME.fls" "$FILENAME.fdb_latexmk" "$FILENAME.synctex.gz"

echo "Build complete! PDF is at $FILENAME.pdf"