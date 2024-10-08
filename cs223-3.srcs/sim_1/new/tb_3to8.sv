`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 14:48:11
// Design Name: 
// Module Name: tb_3to8
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


module tb_3to8();
reg en , a , b ;
wire [3:0] out0 , out1 ;
decoder3to8 test(a , b , en , out0 , out1) ;
initial begin
$monitor (" %b %b %b %b%b%b%b %b%b%b%b" , en , a , b , out0[3] , out0[2] , out0[1] , out0[0] ,
    out1[3] , out1[2] , out1[1] , out1[0]) ;
a =1'bx   ; b =1'bx  ; en =0  ;#1 
a =1'bx   ; b =1'bx  ; en =1  ;#1 
a =0   ; b =0  ; en =1  ;#1 
a =0   ; b =0  ; en =0  ;#1 
a =0   ; b =1  ; en =1  ;#1 
a =0   ; b =1  ; en =0  ;#1
a =1   ; b =0  ; en =1  ;#1 
a =1   ; b =0  ; en =0  ;#1 
a =1   ; b =1  ; en =1  ;#1
a =1   ; b =1  ; en =0  ;
end
endmodule
