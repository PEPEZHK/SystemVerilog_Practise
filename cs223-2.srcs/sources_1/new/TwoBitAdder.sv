`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 16:36:43
// Design Name: 
// Module Name: TwoBitAdder
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


module TwoBitAdder (
  input logic [1:0] A, B,
  input logic Cin,
  output logic [1:0] Sum,
  output logic Cout
);
  // Instantiate the structural FullAdder modules
  FullAdder fa0 (.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(fa0_cout));
  FullAdder fa1 (.A(A[1]), .B(B[1]), .Cin(fa0_cout), .Sum(Sum[1]), .Cout(Cout));

  // Internal signals
  logic fa0_cout;

endmodule
