`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 23.10.2023 17:26:44 
// Module Name: day10_1bit_comparator
//////////////////////////////////////////////////////////////////////////////////


module day10_1bit_comparator(
    input a,
    input b,
    output g,
    output e,
    output s
    );
    
    assign g = a & (~b);
    assign e = a ~^ b;
    assign s = (~a) & b;
    
endmodule
