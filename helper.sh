#!/bin/bash

function compile_nasm(){
	origfile=$1
	outfile=${1%%.*}
	nasm -felf64 $1 -o $outfile.o
       	ld $outfile.o -o $outfile
}
function dump_shellcode(){
	objdump -M intel -d $1
}
