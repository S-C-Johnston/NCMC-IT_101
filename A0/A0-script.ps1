##Assignment 0 script
##IT 101
##Stewart Johnston (johnstons1@student.ncmich.edu)
##For the purpose of demonstrating basic CLI knowledge

$MAGENTA_DIR = "./test/red/magenta"
$CYAN_DIR = "./test/blue/cyan"
$COLOR_FILENAME = "COLOR.bat"

$SCRIPT_ROOT = $(Get-Location)

function new-color-batch($target_file){
    echo "Debug new-color-batch, target_file is: $target_file"
    write-output '@echo off
    for %%I in ("%~dp0.") do for %%J in ("%%~dpI.") do set ParentFolderName=%%~nxJ
    echo This file is in folder: %ParentFolderName%'
    | out-file -encoding ascii -filepath "$target_file" -ea 0

    #main function text from https://stackoverflow.com/a/60046276
}

function update-color-batch($target_file){
    echo "Debug update-color-batch, target_file is: $target_file"
    $scripts_file = "$SCRIPT_ROOT\test\scripts"
    write-output "@echo on
    dir /s /b *.bat >> ""${scripts_file}"""
    | out-file -Append -Encoding ascii -FilePath "$target_file" -ea 0
}
function main() {

    foreach ($directory in $args){
    echo "Debug main, directory is: $directory"
    mkdir $directory -ea 0
    new-item -ItemType File $directory/$COLOR_FILENAME -ea 0
    new-color-batch "$directory/$COLOR_FILENAME"
    icacls.exe "$directory/$COLOR_FILENAME" /grant everyone:f
    update-color-batch "$directory/$COLOR_FILENAME"
    }

    foreach ($directory in $(Get-ChildItem -directory -recurse)) {
        if ($directory.name -eq 'test') {
            continue
        }

        mkdir $directory/next -ErrorAction 0
    }
}

main $MAGENTA_DIR $CYAN_DIR;