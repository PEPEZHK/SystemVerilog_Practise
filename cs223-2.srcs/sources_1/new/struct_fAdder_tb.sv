`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2024 18:49:27
// Design Name: 
// Module Name: struct_fAdder_tb
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


module struct_fAdder_tb();
reg a , b , cin ;
wire s , cout ;
struct_fAdder test(a , b , cin , s , cout) ;
initial begin 
$monitor("At time %0t: a=%b b=%b, Cin=%b, sum=%b, carry=%b",$time, a,b,cin,s,cout);
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
end
endmodule
