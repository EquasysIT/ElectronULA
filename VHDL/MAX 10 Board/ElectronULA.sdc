# (C) 2001-2023 Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions and other 
# software and tools, and its AMPP partner logic functions, and any output 
# files from any of the foregoing (including device programming or simulation 
# files), and any associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License Subscription 
# Agreement, Intel FPGA IP License Agreement, or other applicable 
# license agreement, including, without limitation, that your use is for the 
# sole purpose of programming logic devices manufactured by Intel and sold by 
# Intel or its authorized distributors.  Please refer to the applicable 
# agreement for further details.


# Timing constraints

# Constrain clock port clk_in with a 62.5 ns (16 Mhz) requirement
create_clock -period 62.5 [get_ports clk_in]

# Automatically apply a generate clock on the output of phase-locked loops (PLLs)
# This command can be safely left in the SDC even if no PLLs exist in the design

derive_pll_clocks

# Constrain the input I/O path
set_input_delay -clock clk_in -max 3 [all_inputs]
set_input_delay -clock clk_in -min 2 [all_inputs]

# Constrain the output I/O path
set_output_delay -clock clk_in -max 3 [all_inputs]