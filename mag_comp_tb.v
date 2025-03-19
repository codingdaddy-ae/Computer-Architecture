`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 16:41:20
// Design Name: 
// Module Name: mag_comp_tb
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


module mag_comp_tb();
 reg [2:0] a;
 reg [2:0] b;
 wire gt, lt, eq;
mag_comp uut(.a(a),.b(b),.eq(eq),.lt(lt), .gt(gt));
initial begin
for (integer i =0;  i<16; i=i+1)
begin
a=i;
for (integer j =0;  j<16; j=j+1)
begin
b=j;
#50;
end
end
end
endmodule
