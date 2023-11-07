`timescale 1ns / 1ps


module day5_decoder_2to4_with_enable(
    input e,
    input a,
    input b,
    output y0,
    output y1,
    output y2,
    output y3
    );
    
    assign y0 = e&(~a) &( ~b);
    assign y1 = e&(~a )& (b);
    assign y2 = e&(a )& (~b);
    assign y3 = e&(a )& (b);
    
    
    
endmodule
