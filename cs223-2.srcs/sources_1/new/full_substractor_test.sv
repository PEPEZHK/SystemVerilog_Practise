`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 16:07:04
// Design Name: 
// Module Name: full_substractor_test
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


module XOR2 (
  input logic a,
  input logic b,
  output logic y
);
  assign y = a ^ b;
endmodule

module AND2 (
  input logic a,
  input logic b,
  output logic y
);
  assign y = a & b;
endmodule

module OR2 (
  input logic a,
  input logic b,
  output logic y
);
  assign y = a | b;
endmodule

module full_substractor_test (
  input logic A,
  input logic B,
  input logic Bin,
  output logic Diff,
  output logic Bout
);
  
  XOR2 xor1 (.a(A), .b(B), .y(Diff));
  XOR2 xor2 (.a(Diff), .b(Bin), .y(Diff));
  AND2 and1 (.a(~A), .b(B), .y(B1));
  AND2 and2 (.a(~A), .b(Bin), .y(B2));
  AND2 and3 (.a(B), .b(Bin), .y(B3));
  OR2 or1 (.a(B1), .b(B2), .y(Or1));
  OR2 or2 (.a(Or1), .b(B3), .y(Bout));
  
endmodule
