@echo off
set PYTHON_VERSION=3.12.1
set PYTHON_URL=https://www.python.org/ftp/python/%PYTHON_VERSION%/python-%PYTHON_VERSION%-amd64.exe
set INSTALLER_NAME=python-installer.exe
set INSTALL_DIR=C:\Python

echo Downloading Python installer...
curl -o %INSTALLER_NAME% %PYTHON_URL%

echo Installing Python...
start /wait %INSTALLER_NAME% /quiet InstallAllUsers=1 PrependPath=1 Include_test=0

echo Adding Python to system path...
setx PATH "%PATH%;%INSTALL_DIR%\;%INSTALL_DIR%\Scripts\" /M

echo Cleaning up...
del %INSTALLER_NAME%

echo Python %PYTHON_VERSION% is installed and added to the system path.
echo Please restart your command prompt to use Python.

pause