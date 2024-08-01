@echo off
:: this is a script to convert all image files in each director to a single gif file.
:: place this file along the folders containing images.
:: very useful if you want to convert series of jpeg images exported form a dicom file especially like DSA to something you can share.
SETLOCAL EnableDelayedExpansion
FOR /D %%v IN ( * ) DO  (
	echo -----------------:::::::::-----------------
	echo for files in: %%v
	set /p name= enter gif name:
	set /p delay= enter delay, 100/fps:
	CALL magick -dispose previous -delay !delay! "%%v\*.png" -loop 0  !name!.gif
)
pause
