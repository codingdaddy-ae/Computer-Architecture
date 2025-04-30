`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 15:16:03
// Design Name: 
// Module Name: SR_flipflop_tb
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


module SR_flipflop_tb();
 // Inputs
    reg S;
    reg R;
    reg CLK;
    reg CLR;
    reg PR;

    // Outputs
    wire Q;
    wire P;

    // Instantiate the Unit Under Test (UUT)
    SR_flipflop uut (
        .S(S),
        .R(R),
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
        S = 0; R = 0; CLR = 1; PR = 0; #100;
        S = 0; R = 1; CLR = 1; PR = 0; #100;
        S = 1; R = 0; CLR = 1; PR = 0; #100;
        S = 1; R = 1; CLR = 1; PR = 0; #100;
        S = 0; R = 0;                 #100;
        S = 0; R = 0; CLR = 1; PR = 1; #100;
        S = 0; R = 0; CLR = 0; PR = 0; #100;
    end

    // Clock generation
    always #50 CLK = ~CLK;
endmodule
