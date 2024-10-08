`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 14:34:34
// Design Name: 
// Module Name: tb_2to1
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


module tb_2to1();
reg a , b , in ;
wire out ; 
twoToOnemux_beh test(a , b  , in , out) ;
initial begin 
$monitor("Ar %t : a = %b , b = %b , in = %b is = %b" , $time , a , b , in , out) ;
#1
a = 0 ; b = 0 ; in = 0 ;
#1
a = 0 ; b = 0 ; in = 1 ;
#1
a = 0 ; b = 1 ; in = 0 ;
#1
a = 0 ; b = 1 ; in = 1 ;
#1
a = 1 ; b = 0 ; in = 0 ;
#1
a = 1 ; b = 0 ; in = 1 ;
#1
a = 1 ; b = 1 ; in = 0 ;
#1
a = 1 ; b = 1 ; in = 1 ;
end
endmodule
