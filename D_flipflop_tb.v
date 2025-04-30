`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 14:57:16
// Design Name: 
// Module Name: D_flipflop_tb
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


module D_flipflop_tb();
    reg D;
    reg CLK;
    reg CLR;
    reg PR;

    // Outputs
    wire Q;
    wire P;

    // Instantiate the Unit Under Test (UUT)
    D_flipflop uut (
        .D(D),
        .CLK(CLK),
        .CLR(CLR),
        .PR(PR),
        .Q(Q),
        .P(P)
    );

    initial begin
        // Initialize Inputs
        CLK = 0;

        // Wait 100 ns for global reset to finish
        D = 0; CLR = 1; PR = 0; #100;
        D = 1; CLR = 1; PR = 0; #100;
        D = 0;                 #100;
        D = 0; CLR = 1; PR = 1; #100;
        D = 1; CLR = 0; PR = 0; #100;
    end

    // Clock generation
    always #50 CLK = ~CLK;

endmodule
