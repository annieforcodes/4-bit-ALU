`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2025 23:57:17
// Design Name: 
// Module Name: dynnor
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


module dynnor(A,B,clk,Y);
    input [3:0] A, B;
    input clk;  // Clock controls dynamic phases
    output [3:0] Y;
    // clk=0 -> precharge phase
    // clk=1 -> evaluate phase
    assign Y = (clk == 1'b0) ? 4'b1111 : ~(A | B);
endmodule

