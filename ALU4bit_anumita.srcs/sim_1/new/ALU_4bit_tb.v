//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2025 01:11:36
// Design Name: 
// Module Name: ALU_4bit_tb
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
module ALU_4bit_tb;
    // Inputs
    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] opcode;
    reg clk;

    // Outputs
    wire [3:0] result;
    wire carry_out;

    
    ALU_4bit uut (.A(A), .B(B), .opcode(opcode), .clk(clk), .result(result), .carry_out(carry_out));

    // (10 ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

 
    initial begin
        // Initial state
        A = 4'b0000; B = 4'b0000; opcode = 3'b000; #10;


        A = 4'b1001; 
        B = 4'b0101; 
        opcode = 3'b000; 
        #10;

        A = 4'b1100; 
        B = 4'b0111; 
        opcode = 3'b001; 
        #10;

  
        A = 4'b1010; 
        B = 4'b1100; 
        opcode = 3'b010; 
        #10;

        A = 4'b1001; 
        B = 4'b0110; 
        opcode = 3'b011; 
        #20;

        A = 4'b1111; 
        opcode = 3'b100; 
        #10;

        B = 4'b0010; 
        opcode = 3'b101; 
        #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | clk=%b | opcode=%b | A=%b | B=%b | result=%b | carry_out=%b", 
                 $time, clk, opcode, A, B, result, carry_out);
    end
endmodule

