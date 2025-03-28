@REM @ECHO OFF
SetLocal EnableDelayedExpansion
CALL "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x64  >nul 2>&1
SET RESOURCE_FILE=resources.rc
SET z_common_bin_dir=.
SET RC_INPUT=/fo "%z_common_bin_dir%\resources.res" /nologo "%RESOURCE_FILE%" 
IF NOT EXIST "!z_common_bin_dir!" MKDIR "!z_common_bin_dir!"
rc.exe %RC_INPUT% || (
  ECHO Failed to compile resources.
)
GOTO :EOF