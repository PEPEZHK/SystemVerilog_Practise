`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 15:37:21
// Design Name: 
// Module Name: tb_8to1
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


module tb_8to1();
reg [7:0]a ;
reg s0 , s1 , s2;
wire out ;
mux8to1 test(out , a , s0 , s1 , s2) ;
initial begin 
$monitor("%b %b %b %b%b%b%b%b%b%b%b %b" , s2 , s1 , s0 , a[7] , a[6] , a[5] , a[4] , a[3] , a[2] , a[1] , a[0] , out) ;
a = 00000001 ; s2 = 0 ; s1 = 0 ; s0 = 0 ;#1
a = 00000010 ; s2 = 0 ; s1 = 0 ; s0 = 1 ;#1
a = 00000100 ; s2 = 0 ; s1 = 1 ; s0 = 0 ;#1
a = 00001000 ; s2 = 0 ; s1 = 1 ; s0 = 1 ;#1
a = 00010000 ; s2 = 1 ; s1 = 0 ; s0 = 0 ;#1
a = 00100000 ; s2 = 1 ; s1 = 0 ; s0 = 1 ;#1
a = 01000000 ; s2 = 1 ; s1 = 1 ; s0 = 0 ;#1
a = 10000000 ; s2 = 1 ; s1 = 1 ; s0 = 1 ;
end
endmodule
