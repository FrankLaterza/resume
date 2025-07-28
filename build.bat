@echo off
rem build.bat - Build script for LaTeX resume on Windows

set FILENAME=FrankLaterzaFall2025

echo Building PDF...
pdflatex "%FILENAME%.tex"
pdflatex "%FILENAME%.tex"

echo Cleaning up auxiliary files...
del "%FILENAME%.aux" "%FILENAME%.log" "%FILENAME%.out" "%FILENAME%.fls" "%FILENAME%.fdb_latexmk" "%FILENAME%.synctex.gz"

echo Build complete! PDF is at %FILENAME%.pdf