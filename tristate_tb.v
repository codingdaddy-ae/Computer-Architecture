`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 13:29:43
// Design Name: 
// Module Name: tristate_tb
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


module tristate_tb();
reg q;
reg e;
wire o;
tri_buffer4 uut(.q(q), .e(e), .o(o));
initial begin
q=0; e=0;
#100
q=0; e=1;
#100
q=1; e=0;
#100
q=1; e=1;
end
endmodule
