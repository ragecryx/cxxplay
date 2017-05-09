# CxxPlay
Script to make prototyping with C/C++ easier. This is done by including the commands to compile and run the program in the top-most comments on the main file.

## Installation
Run `cxxplay.sh` at the end of your bashrc/zshrc

## How to use
Add something like `// build!#BUILD_COMMAND#` for the build step\
*For Example:* `// build!g++ -std=c++11 -g -Wall -o serialization.bin serialization.cpp`

Add something like `// run!#RUN_COMMAND#` for the run step\
*For Example:* `// run!./serialization.bin`

Now, by using the following command:\
`cxxplay ./serialization.cpp`\
the program will compile and run.
