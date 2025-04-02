`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 14:56:50
// Design Name: 
// Module Name: BinarytoGray_tb
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


module BinarytoGray_tb();
reg [3:0]b;
wire [3:0]g;
BinarytoGray uut(.b(b), .g(g));
initial begin
for(integer i=0; i<16; i=i+1)
begin
b=i;
#50;
end 
end
endmodule
