`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2025 00:11:24
// Design Name: 
// Module Name: the_staticnand
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


module the_staticnand(A,B,Y);
    input [3:0] A, B;
    output [3:0] Y;
    assign Y = ~(A & B);
endmodule
