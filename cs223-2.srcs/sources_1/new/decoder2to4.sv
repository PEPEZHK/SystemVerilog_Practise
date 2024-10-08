`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 10:52:46
// Design Name: 
// Module Name: decoder2to4
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


module decoder2to4(
    input logic en,
    input logic a,
    input logic b,
    output logic [3:0]out
    );
    always @(en,a,b)
     begin
       if(en==1)
         begin
           if(a==1'b0 & b==1'b0) out=4'b0001;
           else if(a==1'b0 & b==1'b1) out=4'b0010;
           else if(a==1'b1 & b==1'b0) out=4'b0100;
           else if(a==1 & b==1) out=4'b1000;
           else out=4'bxxxx;
         end
       else
        out=4'b0000;
     end
endmodule
