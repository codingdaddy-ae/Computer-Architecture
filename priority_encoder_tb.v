`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 16:24:16
// Design Name: 
// Module Name: priority_encoder_tb
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


module priority_encoder_tb();
reg [3:0]a;
wire [2:0]op;
priority_encoder uut(.inp(a), .Y(op));
initial begin
for (integer i =0;  i<16; i=i+1)
begin
a=i;
#50;
 end
end
endmodule
