`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 16:07:22
// Design Name: 
// Module Name: btobcd_tb
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


module btobcd_tb();
reg [3:0]b;
wire [4:0]bcd;
btobcd uut(.bcd(bcd), .b(b));
initial begin
for(integer i=0; i<16; i=i+1)
begin
b=i;
#50;
end 
end
endmodule
