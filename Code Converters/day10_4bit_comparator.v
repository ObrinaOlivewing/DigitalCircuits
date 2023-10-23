`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 23.10.2023 18:38:47
// Module Name: day10_4bit_comparator
//////////////////////////////////////////////////////////////////////////////////


module day10_4bit_comparator(
    input [3:0] a,
    input [3:0] b,
    output g,
    output e,
    output s
    );
    
    wire [3:0]G;
    wire [3:0]E;
    wire [3:0]S;
    
    day10_1bit_comparator Comparator4BitMsb (a[3], b[3], G[3], E[3], S[3]);
    day10_1bit_comparator Comparator4BitA (a[2], b[2], G[2], E[2], S[2]);
    day10_1bit_comparator Comparator4BitB (a[1], b[1], G[1], E[1], S[1]);
    day10_1bit_comparator Comparator4BitLsb (a[0], b[0], G[0], E[0], S[0]);
    
    
    assign g = G[3] | E[3] & G[2] | E[3] & E[2] & G[1] |  E[3] & E[2] & E[1] & G[0];
    assign e = E[3] & E[2] & E[1] & E[0];
    assign s = S[3] | E[3] & S[2] | E[3] & E[2] & S[1] |  E[3] & E[2] & E[1] & S[0];
    
endmodule
