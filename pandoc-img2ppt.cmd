@echo off
SETLOCAL EnableDelayedExpansion
:: Enables the delayed environment variable expansion
:: put this file in directory with images
set /p name= enter pptx filename (donot use spacesor special char):
(
	echo # !name! ^| pre-op
	:: ^ to escape special characters
	echo.
	::new line
	echo ## Clinical Presentation
	echo.
	echo - A  year old male with no know comorbidities,
	echo.
) > !name!.md

for %%f in (*.jpg *.png) do (
	echo ------  
	echo.
	echo ^^![]^(%%f^)
	echo.
) >> !name!.md

echo # Thank You. >> !name!.md

CALL pandoc !name!.md -o !name!.pptx --slide-level=2

pause