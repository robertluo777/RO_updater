

@echo off
SET mypath=%~dp0
SETLOCAL EnableExtensions DisableDelayedExpansion
for /F %%a in ('echo prompt $E ^| cmd') do (
  set "ESC=%%a"
)
SETLOCAL EnableDelayedExpansion
echo %mypath%
cd %mypath%
echo !ESC![101;93m===== 1/3 �P���ݦP�B===== �}�l !ESC![0m
git pull
echo !ESC![92m===== 1/3 �P���ݦP�B===== ����!ESC![0m
echo.
echo !ESC![101;93m===== 2/3 �ܧ�O��===== �}�l!ESC![0m
git add --all
set /p mes=�п�J�����T��:  

if [%mes%] equ [] (set mes="update")
echo %mes%
git commit -m %mes%
echo !ESC![92m===== 2/3 �ܧ�O��===== ����!ESC![0m
echo.
echo !ESC![101;93m===== 3/3 �W�ǧ�s ===== �}�l!ESC![0m
git push
echo !ESC![92m===== 3/3 �W�ǧ�s ===== ����!ESC![0m
timeout 10
exit