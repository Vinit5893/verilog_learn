`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:13:21 01/13/2023 
// Design Name: 
// Module Name:    refresh_counter 
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
module refresh_counter(
    input clk,
	 output reg [1:0]refresh_count=0
	 );

always@(posedge clk) refresh_count<=refresh_count+1;

endmodule
