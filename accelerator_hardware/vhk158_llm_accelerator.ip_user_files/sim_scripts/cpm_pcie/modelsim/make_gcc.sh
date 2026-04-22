#!/bin/sh -v 

GCC=$1
upmem=$2
c_files=$6/temp
h_files=$6/temp
mblaze_include=$3/mblaze_files/include
mblaze_lib=$3/mblaze_files/lib
linker_script=$3/linker_script/lscript.ld
elf_name=$6/$5\_ddrmc.elf
smi_file=$3/ddrmc.smi
upmem_proc=ddrmc/microblaze_I
new_h_files=$6/h_files

$GCC -Wall -Os -g3 -c -fmessage-length=0 -I/$h_files -I/$new_h_files -I/$mblaze_include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v10.0 -mno-xl-soft-mul -mxl-multiply-high -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP $c_files/*.c
$GCC -Wl,-T -Wl,$linker_script -L$mblaze_lib -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v10.0 -mno-xl-soft-mul -mxl-multiply-high -Wl,--no-relax -Wl,--gc-sections -o "$elf_name" *.o
