::#!/usr/bin/bash
::#set -x
echo off
SETLOCAL
set CLR=%ESC%[32m
set RED='%ESC%[31m'
set NC=%ESC%[0m       
::set CLR=
::set RED=
::set NC=       

::#'\e[49m' # No CLR
set PORT=88

set tag="test"
::build_args="--no-cache"
::build_args=""

echo %CLR%Build container%NC%
docker build --file=Dockerfile --tag=%tag% .

echo %CLR}%Start container%NC%
echo %CLR%Web server URL http://localhost:%PORT%%NC%
::echo "%CLR%%NC%%RED%CTRL+C%NC%%CLR% - to stop container%NC%"
rem docker run -p %PORT%:%PORT% --name my-%tag% %tag%
docker run -d --rm -p %PORT%:%PORT% --name my-%tag% %tag%
:loop
    set /p res=Stop container [y/n]?:
if NOT "%res%"=="y" goto loop

echo %CLR%Delete container%NC%
docker stop my-%tag%
rem docker rm my-%tag%