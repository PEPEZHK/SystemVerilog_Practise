`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2024 18:49:27
// Design Name: 
// Module Name: struct_fAdder
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
/* test(a , b , cin , s , cout) ;
initial begin 
$monitor("At time %0t: a=%b b=%b, Cin=%b, sum=%b, carry=%b",$time, a,b,cin,s,cout);
a = 0 ; b = 0 ; cin = 0 ;
#1
a = 0 ; b = 0 ; cin = 1 ;
#1
a = 0 ; b = 1 ; cin = 0 ;
#1
a = 0 ; b = 1 ; cin = 1 ;
#1
a = 1 ; b = 0 ; cin = 0 ;
#1
a = 1 ; b = 0 ; cin = 1 ;
#1
a = 1 ; b = 1 ; cin = 0 ;
#1
a = 1 ; b = 1 ; cin = 1 ;
end
endmodule*/
module xor_gate(input logic a , b , output logic s);
assign s = a^b ;
endmodule
module or_gate(input logic a , b , output logic s);
assign s = a|b ;
endmodule
module and_gate(input logic a , b , output logic s);
assign s = a&b ;
endmodule

module struct_fAdder(
    input a , b , Cin , 
    output S , Cout
    );
logic A , B , s ;
xor xor1(s, a , b) ;
xor xor2(S , s , Cin) ;
and and1(A , a , b) ;
and and2(B , s , Cin) ;
or or1(Cout , A , B) ;
endmodule
