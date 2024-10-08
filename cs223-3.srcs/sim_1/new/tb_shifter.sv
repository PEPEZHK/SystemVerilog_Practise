`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2024 12:14:19
// Design Name: 
// Module Name: tb_shifter
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


module tb_shifter();
reg [3:0]w ;
reg  s ;
wire k ;
wire [3:0]y ;
shifter test(w , k , s , y) ;
initial begin
$monitor("%b%b%b%b %b %b%b%b%b" , w[3] , w[2] , w[1] , w[0] , k , y[3] , y[2] , y[1] , y[0]) ;
w = 0000 ; s = 0 ; #1
w = 0000 ; s = 1 ; #1
w = 0001 ; s = 0 ; #1
w = 0001 ; s = 1 ; #1
w = 0010 ; s = 0 ; #1
w = 0010 ; s = 1 ; #1
w = 0011 ; s = 0 ; #1
w = 0011 ; s = 1 ; #1
w = 0100 ; s = 0 ; #1
w = 0100 ; s = 1 ; #1
w = 0101 ; s = 0 ; #1
w = 0101 ; s = 1 ; #1
w = 0110 ; s = 0 ; #1
w = 0110 ; s = 1 ; #1
w = 0111 ; s = 0 ; #1
w = 0111 ; s = 1 ; #1
w = 1000 ; s = 0 ; #1
w = 1000 ; s = 1 ; #1
w = 1001 ; s = 0 ; #1
w = 1001 ; s = 1 ; #1
w = 1010 ; s = 0 ; #1
w = 1010 ; s = 1 ; #1
w = 1011 ; s = 0 ; #1
w = 1011 ; s = 1 ; #1
w = 1100 ; s = 0 ; #1
w = 1100 ; s = 1 ; #1
w = 1101 ; s = 0 ; #1
w = 1101 ; s = 1 ; #1
w = 1110 ; s = 0 ; #1
w = 1110 ; s = 1 ; #1
w = 1111 ; s = 0 ; #1
w = 1111 ; s = 1 ; 
end
endmodule
