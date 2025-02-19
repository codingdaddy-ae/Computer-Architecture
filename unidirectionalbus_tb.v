`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 14:55:51
// Design Name: 
// Module Name: unidirectionalbus_tb
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


module unidirectionalbus_tb();
reg [3:0]a;
reg c;
wire [3:0]b;
unidirectionalbus uut(.a(a), .b(b), .c(c));
initial begin
for (integer i=0; i<16; i = i+1)
begin
a=i;c=0;#100;
a=i;c=1;#100;
end
end 
endmodule


