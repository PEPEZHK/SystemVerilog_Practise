`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 14:32:08
// Design Name: 
// Module Name: 4to1mux_beh
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

module fourToOnemux_beh(
    input logic a0 , a1 , a2 , a3, c1 , c0 ,
    output logic out
    );
    logic out0 , out1 ; 
    twoToOnemux_beh first(a0 , a1 , c1 , out0) ;
    twoToOnemux_beh second(a2 , a3 , c1 , out1) ;
    twoToOnemux_beh third(out0 , out1 , c0 , out) ;
endmodule
