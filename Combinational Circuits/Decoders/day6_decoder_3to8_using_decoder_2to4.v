`timescale 1ns / 1ps

//3x8 decoder

module day6_decoder_3to8_using_decoder_2to4(
    input e,
    input a,
    input b,
    input c,
    output y0,
    output y1,
    output y2,
    output y3,
    output y4,
    output y5,
    output y6,
    output y7                 
    );
    
    wire p,q;
    day5_decoder_2to4_with_enable Decoder1(e,0,a,p,q);
    day5_decoder_2to4_with_enable Decoder2(p,b,c,y0,y1,y2,y3);
    day5_decoder_2to4_with_enable Decoder3(q,b,c,y4,y5,y6,y7);        
endmodule
