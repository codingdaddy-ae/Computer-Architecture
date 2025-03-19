`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 15:57:40
// Design Name: 
// Module Name: decoder_f_tb
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

module decoder_f_tb();
reg [2:0]s;
wire f1, f2, f3;
decoder_f uut(.s(s), .f1(f1), .f2(f2), .f3(f3));
initial begin
for(s=0; s<8; s=s+1)
begin
#50;
end 
end
endmodule
