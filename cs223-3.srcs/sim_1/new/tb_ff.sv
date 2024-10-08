`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 17:22:11
// Design Name: 
// Module Name: tb_ff
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


module tb_ff();
reg [2:0]w ;
wire out ;
//ff_4to1 test(w , out) ;
ff_2to1 test(w , out) ;
initial begin
$monitor("%b%b%b = %b" , w[0] , w[1] , w[2] , out) ;
w = 000 ;
#1 
w = 001 ;
#1
w = 010 ;
#1
w = 011 ;
#1
w = 100 ;
#1
w = 110 ;
#1
w = 111 ;
end
endmodule
