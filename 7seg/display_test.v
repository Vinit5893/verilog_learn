`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:45:49 01/13/2023
// Design Name:   top_mod
// Module Name:   C:/Users/VLSILAB EXAM/Xilinx/EEE/seven_segment_display/display_test.v
// Project Name:  seven_segment_display
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_mod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module display_test;

	// Inputs
	reg [3:0] ones;
	reg [3:0] tens;
	reg [3:0] hundred;
	reg clk;

	// Outputs
	wire [7:0] led;
	wire [3:0] anode;

	// Instantiate the Unit Under Test (UUT)
	top_mod uut (
		.ones(ones), 
		.tens(tens), 
		.hundred(hundred), 
		.clk(clk), 
		.led(led), 
		.anode(anode)
	);

	initial begin
		// Initialize Inputs
		ones = 4;
		tens = 7;
		hundred = 6;
		
		// Wait 100 ns for global reset to finish
		#1000;
        
		// Add stimulus here

	end
	
	always begin
	clk =1;
	#20;
	clk=0;
	#20;
	end
      
endmodule

