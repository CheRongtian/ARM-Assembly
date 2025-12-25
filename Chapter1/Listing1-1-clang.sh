#!/bin/bash
clang++ -o Listing1-1 Listing1-1.S
./Listing1-1

clang++ -E Listing1-1.S

clang++ -c Listing1-1.S -o Listing1-1.o

clang++ -o Listing1-1 Listing1-1.o