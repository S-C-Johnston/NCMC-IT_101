##Assignment 0 script
##IT 101
##Stewart Johnston (johnstons1@student.ncmich.edu)
##For the purpose of demonstrating basic CLI knowledge

$MAGENTA_DIR = "./test/red/magenta"
$CYAN_DIR = "./test/blue/cyan"
$COLOR_FILENAME = "COLOR.bat"

$SCRIPT_ROOT = $(Get-Location)

mkdir $MAGENTA_DIR -ea 0
mkdir $CYAN_DIR -ea 0

new-item -ItemType File $MAGENTA_DIR/$COLOR_FILENAME -ea 0
new-item -ItemType File $CYAN_DIR/$COLOR_FILENAME -ea 0

function new-color-batch($target_file){
    write-output '@echo off
    for %%I in ("%~dp0.") do for %%J in ("%%~dpI.") do set ParentFolderName=%%~nxJ
    echo This file is in folder: %ParentFolderName%'
    | out-file -encoding ascii -filepath "$target_file" -ea 0

    #main function text from https://stackoverflow.com/a/60046276
}

new-color-batch("$MAGENTA_DIR/$COLOR_FILENAME")
new-color-batch("$CYAN_DIR/$COLOR_FILENAME")

icacls.exe "$MAGENTA_DIR/$COLOR_FILENAME" /grant everyone:f
icacls.exe "$CYAN_DIR/$COLOR_FILENAME" /grant everyone:f

function update-color-batch($target_file){
    $scripts_file = "$SCRIPT_ROOT\test\scripts"
    write-output "@echo on
    dir /s /b *.bat >> ""${scripts_file}"""
    | out-file -Append -Encoding ascii -FilePath "$target_file" -ea 0
}

update-color-batch("$MAGENTA_DIR/$COLOR_FILENAME")
update-color-batch("$CYAN_DIR/$COLOR_FILENAME")

foreach ($directory in $(Get-ChildItem -directory -recurse)){
    if ($directory.name -eq 'test'){
        continue
    }

    mkdir $directory/next
}