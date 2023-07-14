#!/usr/bin/env bash

if [ $# -gt 0 ]; then
    in="${1}"
    shift

    base="$(basename "$in")"
    base="${base%.s}"
    base="${base%.asm}"
    base="${base%.6502}"
    vasm6502_oldstyle -Fbin -dotdir -c02 -L ${base}.listing.txt ${base}.s -o roms/${base}.bin $@

    #TODO: If compiling into ram address space create wozmon command file.
else
    vasm6502_oldstyle $@
fi
