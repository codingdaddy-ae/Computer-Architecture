`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 13:04:57
// Design Name: 
// Module Name: flipflop
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


module JK_flipflop(
    input J,
    input K,
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
        else if (J == 0 && K == 1) begin
            qm = 0;
        end
        else if (J == 1 && K == 0) begin
            qm = 1;
        end
        else if (J == 0 && K == 0) begin
            qm = P;
        end
        else if (J == 1 && K == 1) begin
            qm = ~P;
        end
    end

    assign P = qm;
    assign Q = ~P;

endmodule

