`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 13:27:27
// Design Name: 
// Module Name: mux8_tb
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


module mux8_tb();
reg [7:0]d;
reg [2:0]s;
wire y;
mux8 uut(.d(d), .s(s), .y(y));
initial begin
d = 378;
for (integer i=0; i<8; i=i+1)
begin
s = i;
#100;
end 
end
endmodule
