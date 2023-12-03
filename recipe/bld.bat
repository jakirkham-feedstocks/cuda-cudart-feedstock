if not exist %PREFIX% mkdir %PREFIX%
if not exist %LIBRARY_LIB%\x64 mkdir %LIBRARY_LIB%\x64
if errorlevel 1 exit /b 1

copy lib\x64\* %LIBRARY_LIB%
copy lib\x64\* %LIBRARY_LIB%\x64
move bin\* %LIBRARY_BIN%
move include\cooperative_groups %LIBRARY_INC%
move include\* %LIBRARY_INC%
if errorlevel 1 exit /b 1
