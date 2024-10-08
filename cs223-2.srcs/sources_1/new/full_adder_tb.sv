`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 17:01:21
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg a , b , cin ;
wire s , cout ;

full_adder test(a , b , cin , s , cout) ;
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
