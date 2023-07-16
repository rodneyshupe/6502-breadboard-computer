#!/usr/bin/env bash

#TODO: If compiling into ram address space assemble into a temp file and create wozmon command file.

if [ $# -gt 0 ]; then
    in="${1}"
    shift

    base="$(basename "$in")"
    base="${base%.s}"
    base="${base%.asm}"
    base="${base%.6502}"

    #TODO Switch to CC65 for the assembler

    vasm6502_oldstyle -Fbin -dotdir -c02 -L roms/${base}.listing.txt ${base}.s -o roms/${base}.bin $@
else
    vasm6502_oldstyle $@
fi
