`timescale 1ns / 1ps
// 1x4 Demux implementation

module Day3_Demux_1x4(
    input x,
    input s1,
    input s0,
    output y0,
    output y1,
    output y2,
    output y3
    );
    
    assign y0 = x & (~s1)& (~s0);
    assign y1 = x & (~s1)& (s0);
    assign y2 = x & (s1)& (~s0);
    assign y3 = x & (s1)& (s0);
    
endmodule
