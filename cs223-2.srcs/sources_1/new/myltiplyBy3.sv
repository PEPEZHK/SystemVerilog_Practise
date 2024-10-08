`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2024 13:23:26
// Design Name: 
// Module Name: myltiplyBy3
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


module myltiplyBy3(
    input logic [1:0]a ,
    output logic [3:0]out
    );
    /*logic [2:0] temp ;
    logic c , carry;
    struct_2bit_adder first(a , a , temp[1:0] , carry) ;
    struct_2bit_adder second(a , temp[1:0] , out[1:0] , c) ;
    struct_fAdder f3(c , carry , 0 , temp[2] , c) ;
    assign out[2] = temp[2] ;
    assign out[3] = c ;*/
    /*logic carry ;
    struct_2bit_adder first(a , a ,  out[1:0] , carry) ;
    assign out[2] = carry ;
    struct_2bit_adder second(out[1:0] , a , out[1:0] , carry) ;
    struct_fAdder check(out[2] , carry , 1'b0 , out[2] , carry) ;
    assign out[3] = carry ;*/
    reg [2:0] shiftResult;

always @(*) begin
    // Left shift A by 1 bit to get 2A
    shiftResult = {a, 1'b0};

    // Add A and 2A to get 3A
    out = shiftResult + a;
end
    /*struct_fAdder first(a[0] , b[0] , 1'b0 , out[3] , carry) ;
    struct_fAdder second(a[1] , b[1], carry , out[2] , carry) ;
    struct_fAdder third(a[0] , b[0], carry , out[1] , carry) ;
    struct_fAdder fourth(a[1] , b[1], carry , out[0] , carry) ;*/
endmodule
