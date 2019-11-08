@echo off
title PC Cleanup Utility

:menu
cls
echo --------------------------------------------------------------------------------
echo PC Cleanup Utility
echo --------------------------------------------------------------------------------
echo.
echo Select a tool
echo =============
echo.
echo [1] Clean TEMP
echo [2] Clean %%TEMP%%
echo [3] Clean Prefetch
echo [4] Exit
echo.

set /p op=Run:
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
if %op%==4 goto exit
goto error

:1
cls
echo --------------------------------------------------------------------------------
echo Clean TEMP
echo --------------------------------------------------------------------------------
echo.
echo Cleaning TEMP...
ping localhost -n 3 >nul
del /s /f /q %windir%\temp\*.*    
rd /s /q %windir%\temp    
md %windir%\temp    
cls
echo --------------------------------------------------------------------------------
echo Clean TEMP
echo --------------------------------------------------------------------------------
echo.
echo Clean TEMP completed.
echo.
echo Press any key to return to the menu...
pause >nul
goto menu

:2
cls
echo --------------------------------------------------------------------------------
echo Clean %%TEMP%%
echo --------------------------------------------------------------------------------
echo.
echo Cleaning %%TEMP%%...
ping localhost -n 3 >nul
del /s /f /q %temp%\*.*    
rd /s /q %temp%    
md %temp%    
cls
echo --------------------------------------------------------------------------------
echo Clean %%TEMP%%
echo --------------------------------------------------------------------------------
echo.
echo Clean %%TEMP%% completed.
echo.
echo Press any key to return to the menu...
pause >nul
goto menu

:3
cls
echo --------------------------------------------------------------------------------
echo Clean Prefetch
echo --------------------------------------------------------------------------------
echo.
echo Cleaning Prefetch...
ping localhost -n 3 >nul
del /s /f /q %windir%\prefetch\*.*    
rd /s /q %windir%\prefetch 
md %windir%\prefetch   
cls
echo --------------------------------------------------------------------------------
echo Clean Prefetch
echo --------------------------------------------------------------------------------
echo.
echo Clean Prefetch completed.
echo.
echo Press any key to return to the menu...
pause >nul
goto menu

:error
cls
echo Command not recognized.
ping localhost -n 3 >nul
goto menu

:exit
echo Thanks for using PC Cleanup Utility by Keith
ping localhost >nul
exit