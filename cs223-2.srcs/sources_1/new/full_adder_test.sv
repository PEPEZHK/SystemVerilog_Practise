`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 16:07:04
// Design Name: 
// Module Name: full_adder_test
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


/*module full_adder_test(input logic A, B, Cin,
                  output logic Sum, Cout);

    // Full adder logic
    always_comb begin
        Sum  = A ^ B ^ Cin;
        Cout = (A & B) | (B & Cin) | (A & Cin);
    end

endmodule*/

/*****************************
module full_adder (x, y, z, S, C);
input x, y, z;
output S, C;
reg S, C;
always @(x, y, z)
begin
S <= x ^ y ^ z;
C <= x&y | x&z | y&z;
end
endmodule*/

module XOR (
  input logic a, b,
  output logic y
);
  assign y = a ^ b;
endmodule

module AND (
  input logic a, b,
  output logic y
);
  assign y = a & b;
endmodule

module OR (
  input logic a, b,
  output logic y
);
  assign y = a | b;
endmodule

module FullAdder (
  input logic A, B, Cin,
  output logic Sum, Cout
);
  XOR xor1 (.a(A), .b(B), .y(Sum));
  XOR xor2 (.a(Sum), .b(Cin), .y(Cout));
  AND and1 (.a(A), .b(B), .y(Sum));
  AND and2 (.a(B), .b(Cin), .y(Cin));
  AND and3 (.a(A), .b(Cin), .y(Cin));
  OR  or1  (.a(and1.y), .b(and2.y), .y(Cout));
endmodule
