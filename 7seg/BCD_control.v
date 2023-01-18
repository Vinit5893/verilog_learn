`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:27:33 01/13/2023 
// Design Name: 
// Module Name:    BCD_control 
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
module BCD_control(
    input [3:0]ones,
	 input [3:0]tens,
	 input [3:0]hundred,
	 input [3:0]thousand,
	 input [1:0]control,
	 output reg [3:0]digit
	 );

always@(*)
begin
	case(control)
		0: digit=ones;
		1: digit=tens;
		2: digit=hundred;
		3: digit=thousand;
	endcase
end

endmodule
