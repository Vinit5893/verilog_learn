`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:40:28 01/13/2023 
// Design Name: 
// Module Name:    binary_to_disp 
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
module binary_to_disp(
    input [3:0]binary,
	 output reg[7:0]display 
	 );
//display : [dp,a,b,c,d,e,f,g]
always@(binary)
begin
	case(binary)
		0: display=8'b01111110;
		1: display=8'b00110000;
		2: display=8'b01101101;
		3: display=8'b01111001;
		4: display=8'b00110011;
		5: display=8'b01011011;
		6: display=8'b01011111;
		7: display=8'b01110000;
		8: display=8'b01111111;
		9: display=8'b01111011;
		10: display=8'b01110111;
		11: display=8'b00011111;
		12: display=8'b01001110;
		13: display=8'b00111101;
		14: display=8'b01001111;
		15: display=8'b01000111;	
	endcase
	display = ~display;
end
endmodule
