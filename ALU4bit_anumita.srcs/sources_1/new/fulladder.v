`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2025 23:57:17
// Design Name: 
// Module Name: fulladder
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


module fulladder(A,B,Cin,Sum,Cout);
    input A, B, Cin;
    output Sum, Cout;
    wire S1, C1, C2;
    halfadder H1 (A, B, S1, C1);
    halfadder H2 (S1, Cin, Sum, C2);
    assign Cout = C1 | C2;
endmodule
