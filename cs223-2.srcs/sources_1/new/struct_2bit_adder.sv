`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2024 20:08:13
// Design Name: 
// Module Name: struct_2bit_adder
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
module struct_2bit_adder(
    input logic [1:0]a , [1:0]b ,
    output logic [1:0]s ,
    output logic cout
    );  
    wire c ;
full_adder fAdder1(a[0] , b[0] , 1'b0 , s[0] , c) ;
full_adder fAdder2(a[1] , b[1] , c , s[1] , cout) ;

endmodule

/*module struct_2bit_adder(
    input logic [1:0]a , [1:0]b ,
    output logic [1:0]s , cout
    );  
struct_fAdder fAdder1(a[0] , b[0] , 1'b0 , s[0] , cout) ;
struct_fAdder fAdder2(a[1] , b[1] , cout , s[1] , cout) ;
endmodule*/
