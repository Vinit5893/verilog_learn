`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:19:24 01/18/2023 
// Design Name: 
// Module Name:    top_countermodule_7_seg 
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
module top_countermodule_7_seg(
    input clk,rst,
	 output [7:0]led,
	 output [3:0]anode
	 );
wire [3:0]a0=0;
wire [3:0]a1=0;
wire [3:0]a2=0;
wire [3:0]a3=0;

counter_7_segment_display Counter(clk,rst,a0,a1,a2,a3);
top_mod TM(a0,a1,a2,a3,clk,led,anode);

endmodule
