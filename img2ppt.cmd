@echo off
SETLOCAL EnableDelayedExpansion
:: Enables the delayed environment variable expansion
set /p name= enter pptx filename:
(
	echo # !name! ^| pre-op
	:: ^ to escape special characters
	echo.
	::new line
	echo ## Clinical Presentation
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