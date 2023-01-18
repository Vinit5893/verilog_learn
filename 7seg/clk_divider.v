`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:55:15 01/13/2023 
// Design Name: 
// Module Name:    clk_divider 
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
module clk_divider(
    input clk_in,
	 output reg clk_out=0
	 );
localparam div_value=2499;

integer count=0;

always@(posedge clk_in)
begin
	if(count==div_value)
		count <= 0;
	else
		count <= count +1;
end

always@(posedge clk_in)
begin
	if(count==div_value)
		clk_out <= ~clk_out;
	else
		clk_out <= clk_out;
end

endmodule




