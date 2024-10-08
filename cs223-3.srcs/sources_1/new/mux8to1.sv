`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 15:26:14
// Design Name: 
// Module Name: mux8to1
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


module mux8to1(
    output logic out,
    input logic [7:0]a,
    input logic s0, s1 , s2
    );
    logic out0 , out1 ;
    fourToOnemux_beh first(a[0] , a[1] , a[2] , a[3] , s0 , s1 , out0) ;
    fourToOnemux_beh second(a[4] , a[5] , a[6] , a[7] , s0 , s1 , out1) ;
    assign out = out0&~s2 | out1&s2 ; 
endmodule
