`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2024 18:57:58
// Design Name: 
// Module Name: struct_fSubstractor_tb
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

module struct_fSubstractor_tb();
reg a , b , bin ;
wire s , bout;
struct_fSubstractor test(a , b , bin , s , bout) ;
initial begin 
$monitor("At time %0t: a=%b b=%b, Bin=%b, difference=%b, borrow=%b",$time, a,b,bin,s,bout);
a = 0 ; b = 0 ; bin = 0 ;
#1
a = 0 ; b = 0 ; bin = 1 ;
#1
a = 0 ; b = 1 ; bin = 0 ;
#1
a = 0 ; b = 1 ; bin = 1 ;
#1
a = 1 ; b = 0 ; bin = 0 ;
#1
a = 1 ; b = 0 ; bin = 1 ;
#1
a = 1 ; b = 1 ; bin = 0 ;
#1
a = 1 ; b = 1 ; bin = 1 ;
end
endmodule
