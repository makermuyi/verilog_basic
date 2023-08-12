#=====================================================================
# Project   : Design Compiler tcl script
# File Name : top.con
# Author    : Macro
# E-mail    : makermuyi@gmail.com
# Version   : 0.0.1
# Change Log:
#   1. 2022-08-08  Initial version
#
#====================================================================
set lib_name fast
current_design sequ_div

# reset all constraints 
reset_design

#====================================================================
# 1. define clock
#====================================================================
# define the system clock period
set CLK_NAME          clk
set CLK_PERIOD        10
set CLK_SKEW          [expr $CLK_PERIOD*0.05]
set CLK_TRAN          [expr $CLK_PERIOD*0.01]
set CLK_SRC_LATENCY   [expr $CLK_PERIOD*0.1]
set CLK_LATENCY       [expr $CLK_PERIOD*0.1]

# create clock object and set uncertainty
if {[sizeof_collection [get_ports $CLK_NAME]] > 0} {
    create_clock -period $CLK_PERIOD $CLK_NAME
    set_ideal_network      [get_ports $CLK_NAME]
    set_dont_touch_network [get_ports $CLK_NAME]
    set_drive 0            [get_ports $CLK_NAME]
    set_clock_uncertainty  -setup $CLK_SKEW          [get_clocks $CLK_NAME]
    set_clock_transition   -max   $CLK_TRAN          [get_clocks $CLK_NAME]
    set_clock_latency -source -max $CLK_SRC_LATENCY  [get_clocks $CLK_NAME]
    set_clock_latency         -max $CLK_LATENCY      [get_clocks $CLK_NAME]
}

# create virtual clock if clock port is not found
if {[sizeof_collection [get_ports $CLK_NAME]] == 0} {
    set VCLK_NAME vclk
    create_clock -period $clk_period -name $VCLK_NAME
}

#====================================================================
# 2. define reset
#====================================================================
set RST_NAME              rst_n
set_ideal_network         [get_ports $RST_NAME]
set_dont_touch_network    [get_ports $RST_NAME]
set_drive  0              [get_ports $RST_NAME]

#====================================================================
# 3. set input delay
#====================================================================
set DRIVE_CELL INVX1
set DRIVE_PIN  Y
set ALL_IN_EXCEPT_CLK [remove_from_collection [all_inputs] [get_clocks $CLK_NAME]]
set INPUT_DELAY [expr $CLK_PERIOD*0.6]
set_input_delay $INPUT_DELAY  -clock $CLK_NAME $ALL_IN_EXCEPT_CLK
set_driving_cell -lib_cell ${DRIVE_CELL} -pin ${DRIVE_PIN} $ALL_IN_EXCEPT_CLK

#====================================================================
# 3. set output delay
#====================================================================
set OUTPUT_DELAY  [expr $CLK_PERIOD*0.6]
set LIB_NAME      typical
set MAX_LOAD      [expr [load_of $LIB_NAME/INVX8/A] * 10]
set_output_delay  $OUTPUT_DELAY -clock $CLK_NAME  [all_outputs]
set_load          [expr $MAX_LOAD*3]              [all_outputs]
set_isolate_ports -type buffer                    [all_outputs]

# set constraints on input and outputs ports
suppress_message UID-401

# set opearting conditions
# set_operation_conditions 

# turn on auto wire load selection
# set auto_wire_load_selection true
set_wire_load_mode enclosed
#set_wire_load_model -name xxx

#====================================================================
