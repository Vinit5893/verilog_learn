
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name adders -dir "C:/Users/VLSILAB EXAM/Xilinx/EEE/adders/planAhead_run_2" -part xc3s200ft256-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "full_adder.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {half_adder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {full_adder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top full_adder $srcset
add_files [list {full_adder.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s200ft256-4
