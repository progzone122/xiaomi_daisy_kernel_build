#!/bin/bash
patch Makefile < patches/fuck-gcc-wrapper.patch
patch arch/arm64/mm/proc.S < patches/procs-assembly.patch
patch scripts/dtc-lexer.lex.c_shipped < extern-yylloc.patch
