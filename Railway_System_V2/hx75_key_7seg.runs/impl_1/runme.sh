#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=D:/F-FPGA/Vivado/2023.2/ids_lite/ISE/bin/nt64;D:/F-FPGA/Vivado/2023.2/ids_lite/ISE/lib/nt64:D:/F-FPGA/Vivado/2023.2/bin
else
  PATH=D:/F-FPGA/Vivado/2023.2/ids_lite/ISE/bin/nt64;D:/F-FPGA/Vivado/2023.2/ids_lite/ISE/lib/nt64:D:/F-FPGA/Vivado/2023.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='Z:/FPGA/Railway_System/Railway_System_V2/hx75_key_7seg.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .write_bitstream.begin.rst
EAStep vivado -log hx75_key_7seg.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source hx75_key_7seg.tcl -notrace


