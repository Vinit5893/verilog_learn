`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:35:20 01/11/2023 
// Design Name: 
// Module Name:    counter 
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
module clk_divider(clk_in,rst_d,clk_out);
input clk_in,rst_d;
output clk_out; 
reg [24:0]c1;

always@(posedge clk_in or posedge rst_d)
begin
	if(rst_d) 
		c1 <= 25'b0;
	else
		c1 <= c1 + 1;
end
assign clk_out = c1[24];
endmodule


module counter(clk,rst,c);
input clk,rst;
output reg [7:0]c;
wire clk_15_out;


clk_divider clk1(clk,rst,clk_15_out);
always @(posedge clk_15_out or posedge rst)
begin
	if(rst==1) 
		c <= 8'b0000;
	else
		c <= c + 1;
end
endmodule
