`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 14:47:18
// Design Name: 
// Module Name: decoder3_tb
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


module decoder3_tb();
reg en;
reg [2:0]s;
wire [7:0]d;
decoder3 uut(.en(en), .a(s), .op(d));
initial begin
for(s=0; s<8; s=s+1)
begin
en = 0;
#50;
en=1;
#50;
end 
$stop;
end
endmodule
