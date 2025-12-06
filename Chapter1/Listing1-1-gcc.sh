#!/bin/bash
g++ -o Listing1-1 Listing1-1.S
./Listing1-1

# Cpp
g++ -E Listing1-1.S

## pipe the output from Cpp to Gas
g++ -E Listing1-1.S | as -o Listing1-1.o
g++ -o Listing1-1 Listing1-1.S