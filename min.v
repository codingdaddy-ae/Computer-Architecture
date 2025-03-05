`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 15:07:16
// Design Name: 
// Module Name: min
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


module min(
    input [3:0]a,
    output d
    );
    assign d =(!a[3]&!a[2]&!a[0])|(a[3]&!a[1]&!a[0])|(!a[1]&!a[2])|(a[3]&a[2]&a[1]&a[0]);
endmodule
