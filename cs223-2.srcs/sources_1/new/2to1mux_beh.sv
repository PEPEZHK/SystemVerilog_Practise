`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 14:32:08
// Design Name: 
// Module Name: 2to1mux_beh
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


module twoToOnemux_beh(
    input logic a , b , in ,
    output logic out
    );
    assign out = ~in&a | in&b ;
endmodule
