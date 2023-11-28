`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 27.11.2023 20:34:38
// Module Name: day13_dff
//////////////////////////////////////////////////////////////////////////////////


module day13_dff(
    input d,
    input clk,
    output reg q
    );
    
//    initial begin
//      q=0;
//    end
    
    always @(negedge clk)
    begin
     q <= d;
    end
endmodule
