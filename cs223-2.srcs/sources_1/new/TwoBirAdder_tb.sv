`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 16:36:43
// Design Name: 
// Module Name: TwoBirAdder_tb
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


module TwoBitAdder_tb;

  // Inputs
  logic [1:0] A, B;
  logic Cin;

  // Outputs
  logic [1:0] Sum;
  logic Cout;

  // Instantiate the TwoBitAdder module
  TwoBitAdder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
  );

  // Clock generation
  logic clk;
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Test stimulus
  initial begin
    // Initialize inputs
    A = 2'b00;
    B = 2'b00;
    Cin = 0;

    // Apply test vectors
    #10 A = 2'b01;
    #10 B = 2'b10;

    #10 A = 2'b11;
    #10 B = 2'b01;
    Cin = 1;

    #10 A = 2'b10;
    #10 B = 2'b01;
    Cin = 0;

    #10 $stop; // Stop the simulation after all tests are complete
  end

  // Display simulation results
  always @(posedge clk) begin
    $display("Time=%0t A=%b B=%b Cin=%b Sum=%b Cout=%b", $time, A, B, Cin, Sum, Cout);
  end

endmodule
