`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 15:30:04
// Design Name: 
// Module Name: T_flipflop_tb
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


module T_flipflop_tb();
    reg T;
    reg CLK;
    reg CLR;
    reg PR;

    // Outputs
    wire Q;
    wire P;

    // Instantiate the Unit Under Test (UUT)
    T_flipflop uut (
        .T(T),
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
        T = 0; CLR = 1; PR = 0; #100;
        T = 1; CLR = 1; PR = 0; #100;
        T = 0;                 #100;
        T = 0; CLR = 1; PR = 1; #100;
        T = 1; CLR = 0; PR = 0; #100;
    end

    // Clock generation
    always #50 CLK = ~CLK;

endmodule