`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 16:52:42
// Design Name: 
// Module Name: full_substractor
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


module full_substractor(input a , b , Bin ,
                        output s , Bout);
   assign s = a^b^Bin ;
   assign Bout = ~a&b | ~(a^b)&Bin ;    
endmodule
