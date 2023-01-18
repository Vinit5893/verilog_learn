`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:31:46 01/13/2023 
// Design Name: 
// Module Name:    clk_divider_counter 
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
module clk_divider_counter(
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
