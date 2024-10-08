`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2024 12:13:51
// Design Name: 
// Module Name: shifter
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


module shifter(
    input logic [3:0] w,
    output logic k ,
    input logic  shift ,
    output logic [3:0]y 
    );
    twoToOnemux_beh first(w[3] , 1'b0 , shift , y[3]) ;
    twoToOnemux_beh second(w[2] , w[3] , shift , y[2]) ;
    twoToOnemux_beh third(w[1] , w[2] , shift , y[1]) ;
    twoToOnemux_beh fourth(w[0] , w[1] , shift , y[0]) ;
    twoToOnemux_beh fifthd(0 , w[0] , shift , k) ;
endmodule
