`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 15:24:40
// Design Name: 
// Module Name: T_flipflop
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


module T_flipflop(
    input T,
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
        else if (T==1) begin
            qm = ~qm;
        end
        else
            qm = qm;
        end
    assign P = qm;
    assign Q = ~P;
endmodule
