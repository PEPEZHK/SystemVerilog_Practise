`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 19:26:20
// Design Name: 
// Module Name: gf_2
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


module gf_2(
input logic w1 , w2 , w3 ,
output logic out 
    );
    twoToOnemux_beh test(w1&w2 , w1|w2 , w3 , out) ;
endmodule


