`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2024 14:47:44
// Design Name: 
// Module Name: combin
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


module combin(
    output logic out,
    input logic [7:0]a,
    input logic s0, s1 , s2 ,
    input logic [3:0] w,
    output logic k ,
    input logic  shift ,
    output logic [3:0]y 
    );
    mux8to1 f(out , a , s0 , s1 , s2) ;
    shifter s(w , k , shift , y) ;
endmodule
