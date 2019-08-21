@ECHO OFF
SETLOCAL EnableDelayedExpansion

SET input=C:\Workspace\udortho\
SET output=C:\Workspace\udortho\output\

FOR /F %%f IN ('DIR /B %mypath%*.sid') DO (

    SET infile=%%~nf.sid
    SET outfile=%%~nf.tif

    ECHO %input%!infile!
    
    ECHO %output%!outfile!

    gdal_translate -of GTiff %input%!infile! %output%!outfile!

    REM gdal_translate -of GTiff C:/Users/Administrator/Documents/test.tif C:/da/OUTPUT.tif

)
