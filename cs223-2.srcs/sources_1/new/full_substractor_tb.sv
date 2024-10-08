`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 17:01:21
// Design Name: 
// Module Name: full_substractor_tb
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


module full_substractor_tb();
reg a , b , bin;
wire SUM , CARRY; 

full_substractor test(a , b , bin , SUM , CARRY) ;
initial begin 
$monitor("At time %0t: a=%b b=%b, Bin=%b, difference=%b, borrow=%b",$time, a,b,bin,SUM,CARRY);
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
