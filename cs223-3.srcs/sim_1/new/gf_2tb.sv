`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 10:16:24
// Design Name: 
// Module Name: gf_2tb
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


module gf_2tb();
reg w1 , w2 , w3 ;
wire out ;
gf_2 test(w1 , w2 , w3 , out) ;
//gf_4 test(w1 , w2 , w3 , out) ;
initial begin
$monitor ("%b %b %b %b" , w1 , w2 , w3 , out) ;
w1 = 0 ; w2 = 0 ; w3 = 0 ;
#1
w1 = 0 ; w2 = 0 ; w3 = 1 ;
#1
w1 = 0 ; w2 = 1 ; w3 = 0 ;
#1
w1 = 0 ; w2 = 1 ; w3 = 1 ;
#1
w1 = 1 ; w2 = 0 ; w3 = 0 ;
#1
w1 = 1 ; w2 = 0 ; w3 = 1 ;
#1
w1 = 1 ; w2 = 1 ; w3 = 0 ;
#1
w1 = 1 ; w2 = 1 ; w3 = 1 ;
end
endmodule
