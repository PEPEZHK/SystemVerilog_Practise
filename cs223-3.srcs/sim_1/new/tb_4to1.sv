`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 14:34:34
// Design Name: 
// Module Name: tb_4to1
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


module tb_4to1();
reg a0 , a1 , a2 , a3 ;
reg c0 , c1 ;
wire out ;
fourToOnemux_beh test(a0 , a1 , a2 , a3 , c0 , c1 , out) ;
initial begin 
$monitor ("At t=%t a=%b%b%b%b C's=%b%b out = %b" , $time , a3,a2,a1,a0, c0 , c1 , out) ;
a0 = 1 ; a1 = 0 ; a2 = 0 ; a3 = 0 ; c0 = 0 ; c1 = 0 ;#1
a0 = 0 ; a1 = 1 ; a2 = 0 ; a3 = 0 ; c0 = 0 ; c1 = 1 ;#1
a0 = 0 ; a1 = 0 ; a2 = 1 ; a3 = 0 ; c0 = 1 ; c1 = 0 ;#1
a0 = 0 ; a1 = 0 ; a2 = 0 ; a3 = 1 ; c0 = 1 ; c1 = 1 ;
end  
endmodule
