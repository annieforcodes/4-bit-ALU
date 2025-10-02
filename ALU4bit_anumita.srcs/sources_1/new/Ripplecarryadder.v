`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2025 00:01:28
// Design Name: 
// Module Name: Ripplecarryadder
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


module Ripplecarryadder(A,B,Cin,Sum,Cout);
    input [3:0] A, B;
    input Cin;
    output [3:0] Sum;
    output Cout;
    wire C1, C2, C3;
    fulladder F0(A[0], B[0], Cin, Sum[0], C1);
    fulladder F1(A[1], B[1], C1, Sum[1], C2);
    fulladder F2(A[2], B[2], C2, Sum[2], C3);
    fulladder F3(A[3], B[3], C3, Sum[3], Cout);
endmodule

