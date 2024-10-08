`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 19:41:40
// Design Name: 
// Module Name: logicF
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


 module logicF(
    input logic a, b, c, d, e,
    output logic out
    );
    logic [7:0]out0 ; 
    logic [3:0]out1 ;
    decoder2to4 decoder(1'b1 , a , e , out1) ;
    assign out0[0] = ~out1[0] ;
    assign out0[1] = ~out1[1] ;
    assign out0[2] = out1[3] ;
    assign out0[3] = out1[1] ;
    assign out0[4] = 1'b0 ;
    assign out0[5] = ~e ;
    assign out0[6] = out1[3] ;
    assign out0[7] = out1[2] ;
    mux8to1 mux(out, out0, d , c , b);
endmodule


