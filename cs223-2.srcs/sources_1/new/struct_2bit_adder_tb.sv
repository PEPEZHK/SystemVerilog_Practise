`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2024 20:08:13
// Design Name: 
// Module Name: struct_2bit_adder_tb
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


module struct_2bit_adder_tb();
reg [1:0]a , b ;
wire [1:0]s ; wire cout ;  
struct_2bit_adder adder1(a , b , s , cout) ;
initial begin 
$monitor("at %t : with carry=%b a=%b + b=%b ==%b%b", $time , cout , a , b , cout ,s) ;
a = 2 ; b = 3 ;
#1
a = 1 ; b = 1 ;
#1
a = 0 ; b = 1 ;
#1
a = 2 ; b = 1 ;
#1
a = 3 ; b = 3 ;
end
endmodule
/*reg a0 , b0 , a1 , b1 , cin ;
wire s1 , s2 , cout ;
struct_2bit_adder test (a0 , b0 , a1 , b1 ,  cin , s1 , s2 , cout) ;
initial begin                                                                                 
$monitor("At time %0t: a0=%b, a1=%b, b0=%b, b1=%b, cin=%b, s1=%b, s2=%b, cout=%b",$time, a0,a1,b0,b1,cin,s1,s2,cout);
a1 =0 ; a0=0 ; b1=0 ; b0 =0 ; cin=0 ; 
#1
a1 =0 ; a0=0 ; b1=0 ; b0 =0 ; cin=1 ;  
#1
a1 =0 ; a0=0 ; b1=0 ; b0 =1 ; cin=0 ;  
#1
a1 =0 ; a0=1 ; b1=0 ; b0 =0 ; cin=0 ;  
#1
a1 =0 ; a0=0 ; b1=0 ; b0 =1 ; cin=1 ;  
#1
a1 =0 ; a0=1 ; b1=0 ; b0 =0 ; cin=1 ;  
#1
a1 =0 ; a0=1 ; b1=0 ; b0 =1 ; cin=0 ;  
#1
a1 =0 ; a0=1 ; b1=0 ; b0 =1 ; cin=1 ;  
#1
a1 =0 ; a0=0 ; b1=1 ; b0 =0 ; cin=0 ;  
#1
a1 =0 ; a0=0 ; b1=1 ; b0 =0 ; cin=1 ;  
#1
a1 =0 ; a0=0 ; b1=1 ; b0 =1 ; cin=0 ;  
#1
a1 =0 ; a0=1 ; b1=1 ; b0 =0 ; cin=0 ;  
#1
a1 =0 ; a0=0 ; b1=1 ; b0 =1 ; cin=1 ;  
#1
a1 =0 ; a0=1 ; b1=1 ; b0 =0 ; cin=1 ;  
#1
a1 =0 ; a0=1 ; b1=1 ; b0 =1 ; cin=0 ;  
#1
a1 =0 ; a0=1 ; b1=1 ; b0 =1 ; cin=1 ;  
#1
a1 =1 ; a0=0 ; b1=0 ; b0 =0 ; cin=0 ;  
#1
a1 =1 ; a0=0 ; b1=0 ; b0 =0 ; cin=1 ;  
#1
a1 =1 ; a0=0 ; b1=0 ; b0 =1 ; cin=0 ;  
#1
a1 =1 ; a0=1 ; b1=0 ; b0 =0 ; cin=0 ;  
#1
a1 =1 ; a0=0 ; b1=0 ; b0 =1 ; cin=1 ;  
#1
a1 =1 ; a0=1 ; b1=0 ; b0 =0 ; cin=1 ;  
#1
a1 =1 ; a0=1 ; b1=0 ; b0 =1 ; cin=0 ;  
#1
a1 =1 ; a0=1 ; b1=0 ; b0 =1 ; cin=1 ;  
#1
a1 =1 ; a0=0 ; b1=1 ; b0 =0 ; cin=0 ;  
#1
a1 =1 ; a0=0 ; b1=1 ; b0 =0 ; cin=1 ;  
#1
a1 =1 ; a0=0 ; b1=1 ; b0 =1 ; cin=0 ;  
#1
a1 =1 ; a0=1 ; b1=1 ; b0 =0 ; cin=0 ;  
#1
a1 =1 ; a0=0 ; b1=1 ; b0 =1 ; cin=1 ;  
#1
a1 =1 ; a0=1 ; b1=1 ; b0 =0 ; cin=1 ;  
#1
a1 =1 ; a0=1 ; b1=1 ; b0 =1 ; cin=0 ;  
#1
a1 =1 ; a0=1 ; b1=1 ; b0 =1 ; cin=1 ;  
end*/

