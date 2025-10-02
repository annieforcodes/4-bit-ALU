`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2025 00:04:39
// Design Name: 
// Module Name: subtractor
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


module subtractor(A,B,Diff,Cout);
    input [3:0] A,B;
    output [3:0] Diff;
    output Cout;
    wire [3:0] B_neg;
    Ripplecarryadder RCA(A, ~B, 1'b1, Diff, Cout); 
endmodule
