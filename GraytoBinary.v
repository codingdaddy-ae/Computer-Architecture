`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 15:08:47
// Design Name: 
// Module Name: GraytoBinary
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module GraytoBinary(output [3:0]b, input [3:0]g);
assign b[3] = g[3];
assign b[2] = g[2]^b[3];
assign b[1] = b[2]^g[1];
assign b[0] = b[1]^g[0]; 
endmodule
