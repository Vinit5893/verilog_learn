`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:18 01/13/2023 
// Design Name: 
// Module Name:    counter_7_segment_display 
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
module counter_7_segment_display(
    input clk,rst,
	 output reg[3:0]c0=0,
	 output reg[3:0]c1=0,
	 output reg[3:0]c2=0,
	 output reg[3:0]c3=0
	 );
wire clk_count;

clk_divider_counter CD_count(clk,clk_count);

always@(posedge clk_count or posedge rst)
begin
	if(rst==1)
		{c3,c2,c1,c0}=16'b0;
	else
	begin
		c0<=c0+1;
		if(c0==4'b1010)begin
			c0 <= 4'b0000;
			c1 <= c1+1;
		end
		if(c1==4'b1010)begin
			c1 <= 4'b0000;
			c2 <= c2+1;
		end
		if(c2==4'b1010)begin
			c2 <= 4'b0000;
			c3 <= c3+1;
		end
		if(c3==4'b1010)begin
			{c3,c2,c1,c0}=16'b0;
		end
	end
end
endmodule


