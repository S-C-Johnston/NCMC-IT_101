@echo off
for %%I in ("%~dp0.") do for %%J in ("%%~dpI.") do set ParentFolderName=%%~nxJ
echo This file is in folder: %ParentFolderName%