#!/bin/sh
clang -Wall -ansi -pedantic src/tools/txt2c.c -o src/tools/txt2c
src/tools/txt2c src/base.lua src/tools.lua src/driver_gcc.lua src/driver_cl.lua > src/internal_base.h
clang -Wall -ansi -pedantic src/*.c src/lua/*.c -o bam -I src/lua -lm -lpthread -ldl -O2 -rdynamic $*
