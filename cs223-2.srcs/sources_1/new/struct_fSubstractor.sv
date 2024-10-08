`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2024 18:57:58
// Design Name: 
// Module Name: struct_fSubstractor
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

module xor_gate(input logic a , b , output logic s);
assign s = a^b ;
endmodule
module or_gate(input logic a , b , output logic s);
assign s = a|b ;
endmodule
module and_gate(input logic a , b , output logic s);
assign s = a&b ;
endmodule
module inv(input logic a , output logic b);
assign b = ~a ;
endmodule

module struct_fSubstractor(
    input logic a , b , Bin , 
    output logic S , Bout
    );
logic A , B , s , invA , invXor;
xor_gate xor1(a , b , s) ;
xor_gate xor2(s , Bin , S) ;
inv not1(a , invA) ;
and_gate and1(invA , b , A) ;
inv not2(s , invXor) ;
and_gate and2(invXor , Bin , B) ;
or_gate or1(A , B , Bout) ;
endmodule