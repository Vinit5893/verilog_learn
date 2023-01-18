`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:45:52 01/10/2023 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(a,b,cin,S,C);
input a,b,cin;
output S,C;
wire s1,c1,c2;

half_adder ha1(a,b,s1,c1);
half_adder ha2(s1,cin,S,c2);

assign C=c1|c2;
endmodule
