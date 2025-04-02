`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 15:43:04
// Design Name: 
// Module Name: ex3tob_tb
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


module ex3tob_tb();
reg [3:0]e;
wire [4:0]b;
ex3tob uut(.e(e), .b(b));
initial begin
for(integer i=0; i<16; i=i+1)
begin
e=i;
#50;
end 
end
endmodule
