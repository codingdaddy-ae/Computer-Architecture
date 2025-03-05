`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 15:18:25
// Design Name: 
// Module Name: min_tb
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


module min_tb();
reg [3:0]a; wire d;
min uut(.a(a),.d(d));
initial begin
for (integer i=0; i<16; i=i+1)
begin 
a=i; #25;
end
end
endmodule
