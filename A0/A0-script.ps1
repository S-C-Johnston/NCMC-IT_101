##Assignment 0 script
##IT 101
##Stewart Johnston (johnstons1@student.ncmich.edu)
##For the purpose of demonstrating basic CLI knowledge

$magenta_dir = "./test/red/magenta"
$cyan_dir = "./test/blue/cyan"
$color_filename = "COLOR.bat"

mkdir $magenta_dir -ea 0
mkdir $cyan_dir -ea 0

new-item -ItemType File $magenta_dir/$color_filename -ea 0
new-item -ItemType File $cyan_dir/$color_filename -ea 0

function new-color-batch($target_file){
    write-output '@echo off
    for %%I in ("%~dp0.") do for %%J in ("%%~dpI.") do set ParentFolderName=%%~nxJ
    echo This file is in folder: %ParentFolderName%'
    | out-file -encoding ascii -filepath "$target_file" -ea 0

    #main function text from https://stackoverflow.com/a/60046276
}

new-color-batch("$magenta_dir/$color_filename")
new-color-batch("$cyan_dir/$color_filename")

icacls.exe "$magenta_dir/$color_filename" /grant everyone:f
icacls.exe "$cyan_dir/$color_filename" /grant everyone:f

function update-color-batch($target_file){
    write-output '@echo on
    dir /s /b *.bat >> "%~0\..\..\..\scripts"'
    | out-file -Append -Encoding ascii -FilePath "$target_file" -ea 0
}

update-color-batch("$magenta_dir/$color_filename")
update-color-batch("$cyan_dir/$color_filename")