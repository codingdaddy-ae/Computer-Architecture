`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 14:52:47
// Design Name: 
// Module Name: majority_tb
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



module majority_tb();
reg [2:0]a; wire d;
majority uut(.a(a),.d(d));
initial begin
for (integer i=0; i<8; i=i+1)
begin 
a=i; #25;
end
end
endmodule