`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:20:14 01/13/2023 
// Design Name: 
// Module Name:    anode_control 
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
module anode_control(
    input [1:0]signal,
	 output reg [3:0]anode 
	 );

always@(signal)
begin
	case(signal)
		0: anode=4'b1110;
		1: anode=4'b1101;
		2: anode=4'b1011;
		3: anode=4'b0111;
	endcase
end

endmodule
