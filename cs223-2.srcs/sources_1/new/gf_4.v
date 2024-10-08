`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 19:26:20
// Design Name: 
// Module Name: gf_4
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

module gf_4(
input logic w1 , w2 , w3 ,
output logic out 
    );
    fourToOnemux_beh test(w1 , w2 , w2 , w3 , w1 , w3 , out) ;
endmodule
