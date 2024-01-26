@echo off
title Downloading Python...
set PYTHON_VERSION=3.12.1
set PYTHON_URL=https://www.python.org/ftp/python/%PYTHON_VERSION%/python-%PYTHON_VERSION%-amd64.exe
set DOWNLOAD_PATH=python-%PYTHON_VERSION%-amd64.exe

echo Downloading Python %PYTHON_VERSION%...
curl -o %DOWNLOAD_PATH% -L %PYTHON_URL%

echo Installing Python %PYTHON_VERSION%...
start /wait %DOWNLOAD_PATH% /quiet InstallAllUsers=1 PrependPath=1

echo Cleaning up...
title Cleaning Up...
del %DOWNLOAD_PATH%

echo Python %PYTHON_VERSION% has been installed.