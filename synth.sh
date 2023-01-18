# read design
read_verilog fulladder.v

# elaborate design hierarchy
# hierarchy -check -top mytop

# generic synthesis
synth -top fulladder
flatten
# the high-level stuff
# proc; opt; fsm; opt; memory; opt

# mapping to internal cell library
techmap; opt

# mapping flip-flops to mycells.lib
# dfflibmap -liberty mycells.lib

# mapping logic to mycells.lib
abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib

#stat of chip area
tee -o chiparea.txt stat -liberty sky130_fd_sc_hd__tt_025C_1v80.lib

# cleanup
clean

# write synthesized design
write_verilog -noattr fa2synth.v


