@echo off
rem build.bat - Build script for LaTeX resume on Windows

set FILENAME=FrankLaterzaFall2025

echo Building PDF...
pdflatex "%FILENAME%.tex"
pdflatex "%FILENAME%.tex"

echo Creating PNG preview...
rem This requires ImageMagick to be installed and in the system's PATH.
rem You can get it from https://imagemagick.org/
magick -density 300 "%FILENAME%.pdf[0]" "resume_preview.png"

echo Cleaning up auxiliary files...
del "%FILENAME%.aux" "%FILENAME%.log" "%FILENAME%.out" "%FILENAME%.fls" "%FILENAME%.fdb_latexmk" "%FILENAME%.synctex.gz"

echo Build complete! PDF is at %FILENAME%.pdf and preview at resume_preview.png