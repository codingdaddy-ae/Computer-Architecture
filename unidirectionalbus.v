`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 14:46:12
// Design Name: 
// Module Name: unidirectionalbus
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


module unidirectionalbus(
    input [3:0]a ,
    input c,
    output [3:0]b
    );
    assign b= c?a:4'bz;
endmodule
