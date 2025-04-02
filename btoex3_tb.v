`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 15:52:58
// Design Name: 
// Module Name: btoex3_tb
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


module btoex3_tb();
reg [3:0]b;
wire [4:0]e;
btoex3 uut(.e(e), .b(b));
initial begin
for(integer i=0; i<16; i=i+1)
begin
b=i;
#50;
end 
end
endmodule
