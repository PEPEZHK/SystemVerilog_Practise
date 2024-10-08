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
    decoder2to4 decoder(1'b1 , a , b , out1) ;
    /*assign out0[0] = out0[0] ;
    assign out0[1] = out0[1] ;
    assign out0[2] = out0[2] ;
    assign out0[3] = out0[3] ;*/
    /*assign out0[0] = 1'b0 ;
    assign out0[1] = out1[0] ;
    assign out0[2] = ~out1[1] ;
    assign out0[3] = ~out1[0] ;
    assign out0[4] = ~out1[3] ;//
    assign out0[5] = b ;//
    assign out0[6] = ~c ;//16 18 24 26
    assign out0[7] = 1'b0 ;//20 22 28 30 */
    /*assign out0[0] = 0 ;
    assign out0[1] = 1 ;
    assign out0[2] = 0 ;
    assign out0[3] = 0 ;
    assign out0[4] = 0 ;
    assign out0[5] = 0 ;
    assign out0[6] = 1 ;
    assign out0[7] = 0 ;*/
    /*assign out0[0] = 1'b0 ;
    assign out0[1] = out1[1] & out1[2] & e ;
    assign out0[2] = out1[1] & ~out1[2] & e ;
    assign out0[3] = out1[1] & out1[2] & ~e ;
    assign out0[4] = out1[1] & ~out1[2] & ~e ;
    assign out0[5] = ~out1[1] & out1[2] & e ;
    assign out0[6] = out1[0] & ~out1[1] & ~out1[2] & out1[3] & e ;
    assign out0[7] = ~out1[0] & out1[1] & ~out1[2] & out1[3] & ~e  ;
    mux8to1 mux(out , out0 , out1[0] , out1[1] , out1[2]) ;*/
    // Output of the 8-to-1 multiplexer
    assign out0[0] = out1[3] ;
    assign out0[1] = out1[1] ;
    assign out0[2] = 1'b1 ;
    assign out0[3] = b ;
    assign out0[4] = out1[0] ;
    assign out0[5] = ~a ;
    assign out0[6] = 1'b0 ;
    assign out0[7] = out1[2] ;
    // Debug statements for decoded terms
    /*always @* begin
        $display("decoded_terms: %b", decoded_terms);
    end*/

    // Outputs of the 2-to-4 decoder mapped to minterms
    /*assign out0[0] = 1'b0;         // Term 0: ?(0)
    assign out0[1] = decoded_terms[1] & decoded_terms[2] & e;  // Term 1: ?(2)
    assign out0[2] = decoded_terms[1] & ~decoded_terms[2] & e; // Term 2: ?(7)
    assign out0[3] = decoded_terms[1] & ~decoded_terms[2] & ~e;// Term 3: ?(10)
    assign out0[4] = ~decoded_terms[1] & decoded_terms[2] & e; // Term 4: ?(16)
    assign out0[5] = decoded_terms[0] & ~decoded_terms[1] & ~decoded_terms[2] & decoded_terms[3] & e; // Term 5: ?(17)
    assign out0[6] = ~decoded_terms[0] & decoded_terms[1] & ~decoded_terms[2] & decoded_terms[3] & e; // Term 6: ?(18)
    assign out0[7] = ~decoded_terms[0] & decoded_terms[1] & ~decoded_terms[2] & decoded_terms[3] & ~e;// Term 7: ?(19)*/

    // Debug statements for out0
    /*always @* begin
        $display("out0: %b", out0);
    end*/
    
    // 8-to-1 mux instantiation
    mux8to1 mux(out, out0, c , d , e);
endmodule


