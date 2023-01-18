`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:56:43 01/13/2023 
// Design Name: 
// Module Name:    top_mod 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top_mod(
    input [3:0]ones,
	 input [3:0]tens,
	 input [3:0]hundred,
	 input [3:0]thousand,
	 input clk,
	 output [7:0]led,
	 output [3:0]anode
	 );
wire refresh_clk_10khz;
wire [1:0]refresh_counting;
wire [3:0]Digit;
//wire [3:0]thousand;

//assign thousand=0;

clk_divider CD(clk,refresh_clk_10khz);
refresh_counter RC(refresh_clk_10khz,refresh_counting);
BCD_control BC(ones,tens,hundred,thousand,refresh_counting,Digit);
binary_to_disp DISP(Digit,led);
anode_control ANODE(refresh_counting,anode);

endmodule






