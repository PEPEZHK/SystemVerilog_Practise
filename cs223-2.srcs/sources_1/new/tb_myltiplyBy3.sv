`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2024 13:05:21
// Design Name: 
// Module Name: tb_myltiplyBy3
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


module tb_myltiplyBy3();
reg [1:0]a ;
wire [3:0]out ;
myltiplyBy3 test(a , out) ;
initial begin 
$monitor("At time %0t: a=%b out=%b",$time, a , out);
a = 00 ;
#1
a = 01 ; 
#1
a = 10 ;
#1
a = 11 ; 
end
endmodule
