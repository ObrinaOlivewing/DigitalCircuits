`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 28.11.2023 12:24:27
// Module Name: day13_tff
//////////////////////////////////////////////////////////////////////////////////


module day13_tff(
    input t,
    input clk,
    output reg q
    );
    
    initial begin
     q = 1;
    end
    
    always@(negedge clk)
    begin
    if(t==1)
     q<= ~q;
    else
     q<= q;
    end
endmodule
