`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 20:50:55
// Design Name: 
// Module Name: tb_logicF
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


module tb_logicF();
reg a , b , c , d , e ;
wire out ;
logicF test(a , b , c , d , e , out) ;
initial begin
$monitor(" %b %b %b %b %b %b" , a , b , c , d , e , out) ;
a = 0 ; b = 0 ; c = 0 ; d = 0 ; e = 0 ;#1
a = 0 ; b = 0 ; c = 0 ; d = 0 ; e = 1 ;#1
a = 0 ; b = 0 ; c = 0 ; d = 1 ; e = 0 ;#1
a = 0 ; b = 0 ; c = 0 ; d = 1 ; e = 1 ;#1
a = 0 ; b = 0 ; c = 1 ; d = 0 ; e = 0 ;#1
a = 0 ; b = 0 ; c = 1 ; d = 0 ; e = 1 ;#1
a = 0 ; b = 0 ; c = 1 ; d = 1 ; e = 0 ;#1
a = 0 ; b = 0 ; c = 1 ; d = 1 ; e = 1 ;#1
a = 0 ; b = 1 ; c = 0 ; d = 0 ; e = 0 ;#1
a = 0 ; b = 1 ; c = 0 ; d = 0 ; e = 1 ;#1
a = 0 ; b = 1 ; c = 0 ; d = 1 ; e = 0 ;#1
a = 0 ; b = 1 ; c = 0 ; d = 1 ; e = 1 ;#1
a = 0 ; b = 1 ; c = 1 ; d = 0 ; e = 0 ;#1
a = 0 ; b = 1 ; c = 1 ; d = 0 ; e = 1 ;#1
a = 0 ; b = 1 ; c = 1 ; d = 1 ; e = 0 ;#1
a = 0 ; b = 1 ; c = 1 ; d = 1 ; e = 1 ;#1
a = 1 ; b = 0 ; c = 0 ; d = 0 ; e = 0 ;#1
a = 1 ; b = 0 ; c = 0 ; d = 0 ; e = 1 ;#1
a = 1 ; b = 0 ; c = 0 ; d = 1 ; e = 0 ;#1
a = 1 ; b = 0 ; c = 0 ; d = 1 ; e = 1 ;#1
a = 1 ; b = 0 ; c = 1 ; d = 0 ; e = 0 ;#1
a = 1 ; b = 0 ; c = 1 ; d = 0 ; e = 1 ;#1
a = 1 ; b = 0 ; c = 1 ; d = 1 ; e = 0 ;#1
a = 1 ; b = 0 ; c = 1 ; d = 1 ; e = 1 ;#1
a = 1 ; b = 1 ; c = 0 ; d = 0 ; e = 0 ;#1
a = 1 ; b = 1 ; c = 0 ; d = 0 ; e = 1 ;#1
a = 1 ; b = 1 ; c = 0 ; d = 1 ; e = 0 ;#1
a = 1 ; b = 1 ; c = 0 ; d = 1 ; e = 1 ;#1
a = 1 ; b = 1 ; c = 1 ; d = 0 ; e = 0 ;#1
a = 1 ; b = 1 ; c = 1 ; d = 0 ; e = 1 ;#1
a = 1 ; b = 1 ; c = 1 ; d = 1 ; e = 0 ;#1
a = 1 ; b = 1 ; c = 1 ; d = 1 ; e = 1 ;
end
endmodule
