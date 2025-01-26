@echo off
echo Drag and drop a .md on me!
if not "%~x1"==".md" goto :error
echo converting "%~1"
pandoc "%~1" -o "%~n1".pptx --reference-doc=reference.pptx --slide-level=2
echo Done!
goto :end
:error
echo please give me markdown file!
:end
