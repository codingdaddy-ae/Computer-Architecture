`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 15:34:48
// Design Name: 
// Module Name: GraytoBinary_tb
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


module GraytoBinary_tb();
reg [3:0]g;
wire [3:0]b;
BinarytoGray uut(.b(b), .g(g));
initial begin
for(integer i=0; i<16; i=i+1)
begin
g=i;
#50;
end
end
endmodule
