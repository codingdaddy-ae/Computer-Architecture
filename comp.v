`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 15:39:18
// Design Name: 
// Module Name: comp
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


module comp(
 input [3:0]a,
 output [3:0]o
 );
 assign o[3] = (!a[3]&a[0]) | (!a[3]&a[1]) | (!a[3]&a[2]&!a[0]) | (a[3]&!a[2]&!a[1]&!a[0]);
 assign o[2] = (!a[2]&a[0]) | (a[2]&!a[1]&!a[0]) | (!a[2]&a[1]&!a[0]);
 assign o[1] = (a[1]^a[0]) ;
 assign o[0] = a[0];
endmodule
