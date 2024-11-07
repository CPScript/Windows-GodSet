@echo off
set "folderName=GodMode.{ED7BA470-8E54-825C-99712043E01C}"
set "desktopPath=%USERPROFILE%\Desktop"
set "godModePath=%desktopPath%\%folderName%"

if exist "%godModePath%" (
    echo The God Mode folder already exists.
    set /p openChoice="Do you want to open the existing God Mode folder? (Y/N): "
    if /I "%openChoice%"=="Y" (
        start "" "%godModePath%"
    ) else (
        echo Exiting.
    )
    exit /b
)

set /p createChoice="The God Mode folder does not exist. Do you want to create it? (Y/N): "
if /I "%createChoice%"=="Y" (
    mkdir "%godModePath%"
    echo God Mode folder created successfully.
    
    set /p openNewChoice="Do you want to open the newly created God Mode folder? (Y/N): "
    if /I "%openNewChoice%"=="Y" (
        start "" "%godModePath%"
    ) else (
        echo Exiting.
    )
) else (
    echo Exiting.
)