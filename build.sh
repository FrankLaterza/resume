#!/bin/bash
# build.sh - Build script for LaTeX resume on macOS/Linux

# Exit on error
set -e

FILENAME="FrankLaterzaFall2025"

echo "Building PDF..."
pdflatex "$FILENAME.tex"
pdflatex "$FILENAME.tex"

echo "Creating PNG preview..."
# For macOS, 'sips' is available by default.
# For Linux, you might need to install a tool like 'pdftoppm' (from poppler-utils)
# or 'convert' (from ImageMagick) and change the command below.
if command -v sips &> /dev/null; then
    sips -s format png "$FILENAME.pdf" --out resume_preview.png
else
    echo "Warning: 'sips' command not found. Skipping PNG preview generation."
    echo "On Linux, you can install 'poppler-utils' and use 'pdftoppm -png -f 1 -singlefile ${FILENAME}.pdf resume_preview'"
fi


echo "Cleaning up auxiliary files..."
rm -f "$FILENAME.aux" "$FILENAME.log" "$FILENAME.out" "$FILENAME.fls" "$FILENAME.fdb_latexmk" "$FILENAME.synctex.gz"

echo "Build complete! PDF is at $FILENAME.pdf and preview at resume_preview.png"