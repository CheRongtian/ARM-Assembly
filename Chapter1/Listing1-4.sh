#!/bin/bash
set -e
rm -f Listing1-4 *.o
clang++ -o Listing1-4 Listing1-4.cpp Listing1-4.S
./Listing1-4