`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 10:59:39
// Design Name: 
// Module Name: decoder2to4_tb
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


module decoder2to4_tb();
reg a,b,en;
wire [3:0]out;

decoder2to4 test(en,a,b,out);

initial begin
$monitor("en=%b a=%b b=%b y=%b",en,a,b,out);
en=0;a=1'bx;b=1'bx;#1
en=1;a=0;b=0;#1
en=1;a=0;b=1;#1
en=1;a=1;b=0;#1
en=1;a=1;b=1;
end
endmodule
