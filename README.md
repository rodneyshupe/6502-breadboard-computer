# 6502 Based Breadboard Computer

This repository contains various files related to a breadboard based computer.

Credit goes to Ben Eater's fabulous [6502 project](https://eater.net/6502)


## Tools

There are a couple tools needed to build the binaries and get them on the ROM. Here is how to install them on linux.

### MiniPro

To install minipro via brew:

```sh
brew install minipro
```

To install minipro from source:

```sh
git clone https://gitlab.com/DavidGriffith/minipro.git
cd minipro make make install
```

### 6502 Assembler

To install vasm:

```sh
wget <http://sun.hasenbraten.de/vasm/release/vasm.tar.gz>
tar xvzf vasm.tar.gz
cd vasm
make CPU=6502 SYNTAX=oldstyle
cp vasm6502_oldstyle /usr/local/bin
cp vobjdump /usr/local/bin
```

To assemble a binary execute:

If your code uses newer operands such as `DEC` add parameters `-c02`

```sh
vasm6502_oldstyle -Fbin -dotdir -c02 -L wozmon.txt wozmon.s -o roms/wozmon.bin
```
