#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

patch -l Makefile < "$DIR/patches/fuck-gcc-wrapper.patch"
patch -l arch/arm64/mm/proc.S < "$DIR/patches/procs-assembly.patch"
patch -l scripts/dtc/dtc-lexer.lex.c_shipped < "$DIR/patches/extern-yylloc.patch"
