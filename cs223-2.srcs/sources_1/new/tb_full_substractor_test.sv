`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 16:07:04
// Design Name: 
// Module Name: tb_full_substractor_test
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

module tb_full_substractor_test();
// Inputs
  logic A, B, Bin;
  
  // Outputs
  logic Diff, Bout;
  
  // Instantiate the FullSubtractor module
  full_substractor_test uut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .Diff(Diff),
    .Bout(Bout)
  );
  
  // Clock generation
  initial begin
    $dumpfile("tb_full_substractor_test.vcd");
    $dumpvars(0, tb_full_substractor_test);
    
    // Test case 1
    A = 0; B = 0; Bin = 0;
    #10;
    
    // Test case 2
    A = 1; B = 0; Bin = 0;
    #10;
    
    // Test case 3
    A = 0; B = 1; Bin = 0;
    #10;
    
    // Test case 4
    A = 1; B = 1; Bin = 0;
    #10;
    
    // Test case 5
    A = 0; B = 0; Bin = 1;
    #10;
    
    // Test case 6
    A = 1; B = 0; Bin = 1;
    #10;
    
    // Test case 7
    A = 0; B = 1; Bin = 1;
    #10;
    
    // Test case 8
    A = 1; B = 1; Bin = 1;
    #10;
    
    $finish;
  end

endmodule
