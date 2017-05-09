#!/bin/bash

function cxxplay_func() {
    clear

    fgMauve="\e[35m"
    bgMauve="\e[45m"
    fgGray="\e[30m"
    bgRed="\e[41m"
    colorReset="\e[0m"
    Cl2EOL="\x1B[K"

    if [ $# -eq 0 ]; then
        echo -e "$bgMauve$fgGray CxxPlay - Usage: cxxplay file.cpp$Cl2EOL$colorReset\n\n$fgMauve Details:$colorReset\n*[1] The first line of your code should be something like\n\t// build!g++ -g -Wall -o awesome.bin awesometest.cpp\n*[2] The second line of your code should be something like\n\t// run!./awesome.bin someparam 23"
        return
    fi

    BuildLine=$(head -n 1 $1)
    RunLine=$(head -n 2 $1)

    echo -e "$bgMauve$fgGray CxxPlay -> Build & Run $1$Cl2EOL$colorReset"

    BuildCommand=${BuildLine##*!}
    RunCommand=${RunLine##*!}

    eval "$BuildCommand"
    if [ $? -eq 0 ]; then
        eval "$RunCommand"
    else
        echo "Build failed!"
    fi
}

alias cxxplay=cxxplay_func
