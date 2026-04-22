@echo off

set GCC=%1
set upmem=%2
set c_files=%6/temp
set h_files=%6/temp
set mblaze_include=%3/mblaze_files/include
set mblaze_lib=%3/mblaze_files/lib
set linker_script=%3/linker_script/lscript.ld
set elf_name=%6/%5_ddrmc.elf
set smi_file=%3/ddrmc.smi
set upmem_proc=ddrmc/microblaze_I
set new_h_files=%6/h_files


del c_out
del o_out
del out_1
del out_2
del out_new_1
del out_new_2

set temp_files=%c_files%
set temp_c_files=%temp_files:/=\%

dir %temp_c_files% /A:-D /b > c_out

for /f "tokens=*" %%s in (c_out) do (
  for /f "tokens=2 delims==." %%a in ("%%s") do (
	IF !%%a! == !c! (
		echo %%s >> out_1
	)
  )
)

for /f "usebackqdelims=" %%i in (out_1) do @<nul set /p"=%%i ">>"out_new_1
set /P c_fullName_file=<out_new_1

%GCC% -Wall -Os -g3 -c -fmessage-length=0 -I%h_files% -I%new_h_files% -I%mblaze_include% -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v10.0 -mno-xl-soft-mul -mxl-multiply-high -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP %c_fullName_file%


dir %temp_c_files% /A:-D /b > o_out

for /f "tokens=*" %%s in (o_out) do (
  for /f "tokens=2 delims==." %%a in ("%%s") do (
	IF !%%a! == !o! (
		echo %%s >> out_2
	)
  )
)
for /f "usebackqdelims=" %%i in (out_2) do @<nul set /p"=%%i ">>"out_new_2
set /P object_files=<out_new_2

%GCC% -Wl,-T -Wl,%linker_script% -L%mblaze_lib% -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v10.0 -mno-xl-soft-mul -mxl-multiply-high -Wl,--no-relax -Wl,--gc-sections -o %elf_name% %object_files%
