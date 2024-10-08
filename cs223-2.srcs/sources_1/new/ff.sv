`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 17:19:06
// Design Name: 
// Module Name: ff
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


/*module ff_4to1(
input logic [2:0]w ,
output logic f 
    );
    fourToOnemux_beh xor3(w[0] , ~w[0] , ~w[0] , w[0] , w[1] , w[2] , f) ;
endmodule*/

module ff_2to1(
input logic [2:0]w,
output logic f
    );
    logic out0 ;
    twoToOnemux_beh first(w[2] , ~w[2] , w[1] , out0) ;
    twoToOnemux_beh second(out0 , ~out0 , w[0] , f) ;
endmodule
