`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 15:12:06
// Design Name: 
// Module Name: SR_flipflop
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


module SR_flipflop(
    input S,
    input R,
    input CLK,
    input PR,
    input CLR,
    output Q,
    output P
    );
    reg qm = 0;

    always @(posedge CLK) begin
        if (PR == 1) begin
            qm = 1;
        end
        else if (CLR == 0) begin
            qm = 0;
        end
        else if (S == 0 && R == 1) begin
            qm = 0;
        end
        else if (S == 1 && R == 0) begin
            qm = 1;
        end
        else if (S == 0 && R == 0) begin
            qm = P;
        end
        else if (S == 1 && R == 1) begin
            qm = 1'bx;
        end
    end

    assign P = qm;
    assign Q = ~P;
    
endmodule
