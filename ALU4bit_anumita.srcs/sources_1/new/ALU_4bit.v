`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2025 00:40:25
// Design Name: 
// Module Name: ALU_4bit
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


module ALU_4bit (A,B,opcode,clk,result,carry_out);
    input [3:0] A, B;
    input [2:0] opcode;
    input clk;             // Clock-> dynamic nor
    output reg [3:0] result;
    output reg carry_out;

    wire [3:0] sum, diff, nand_out, nor_out, ones_comp, twos_comp;
    wire sum_cout, diff_cout;

    Ripplecarryadder RCA (.A(A), .B(B), .Cin(1'b0), .Sum(sum), .Cout(sum_cout));
    subtractor SUB (.A(A), .B(B), .Diff(diff), .Cout(diff_cout));
    the_staticnand SN (.A(A), .B(B), .Y(nand_out));
    dynnor DN (.A(A), .B(B), .clk(clk), .Y(nor_out));
    onecomp OC (.A(A), .Y(ones_comp));
    twocomp TC (.B(B), .Y(twos_comp));

    always @(*) begin
        case (opcode)
            3'b000: begin
                result = sum;         
                carry_out = sum_cout;
            end
            3'b001: begin
                result = diff;        
                carry_out = diff_cout;
            end
            3'b010: begin
                result = nand_out;    
                carry_out = 0;
            end
            3'b011: begin
                result = nor_out;     
                carry_out = 0;
            end
            3'b100: begin
                result = ones_comp;   
                carry_out = 0;
            end
            3'b101: begin
                result = twos_comp;   
                carry_out = 0;
            end
            default: begin
                result = 4'bxxxx;
                carry_out = 1'bx;
            end
        endcase
    end
endmodule
