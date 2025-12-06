#!/bin/bash
as -arch arm64 Listing1-1.S -o Listing1-1.o
ld -o Listing1-1 Listing1-1.o -lSystem \
-syslibroot "$(xcrun -sdk macosx --show-sdk-path)" \
-e _main -arch arm64
./Listing1-1