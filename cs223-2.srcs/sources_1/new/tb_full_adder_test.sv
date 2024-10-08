`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 16:07:04
// Design Name: 
// Module Name: tb_full_adder_test
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

module tb_full_adder_test();
// Inputs
  logic a, b, cin;

  // Outputs
  logic Sum, Cout;

  // Instantiate the FullAdder module
  full_adder_test uut (
    .A(a),
    .B(b),
    .Cin(cin),
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
a = 0 ; b = 0 ; cin = 0 ;
#1
a = 0 ; b = 0 ; cin = 1 ;
#1
a = 0 ; b = 1 ; cin = 0 ;
#1
a = 0 ; b = 1 ; cin = 1 ;
#1
a = 1 ; b = 0 ; cin = 0 ;
#1
a = 1 ; b = 0 ; cin = 1 ;
#1
a = 1 ; b = 1 ; cin = 0 ;
#1
a = 1 ; b = 1 ; cin = 1 ;

    #10 $stop;// Stop the simulation after all tests are complete
  end

  // Display simulation results
  always @(posedge clk) begin
    $display("At time %0t: a=%b b=%b, Cin=%b, sum=%b, carry=%b",$time, a,b,cin,Sum,Cout);
  end

endmodule
