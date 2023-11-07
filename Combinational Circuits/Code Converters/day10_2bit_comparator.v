`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 23.10.2023 18:07:30
// Module Name: day10_2bit_comparator
//////////////////////////////////////////////////////////////////////////////////


module day10_2bit_comparator(
    input [1:0] a,
    input [1:0] b,
    output g,
    output e,
    output s
    );
    
    wire g0, g1, e0, e1, s0, s1;
    
    day10_1bit_comparator Comparator2BitMsb (a[1] , b[1], g1, e1, s1);
    day10_1bit_comparator Comparator2BitLsb (a[0] , b[0], g0, e0, s0);
    
    assign g = g1 | e1 & g0;
    assign e = e1 & e0;
    assign s = s1 | e1 & s0;
    
endmodule
