#!/bin/bash

LIB_DIR=/lib/x86_64-linux-gnu/security/

gcc -fPIC -fno-stack-protector -c src/mypam.c

sudo ld -x --shared -o ${LIB_DIR}/mypam.so mypam.o

rm mypam.o
