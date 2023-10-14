`timescale 1ns / 1ps


module day7_xor_using_decoder(
    input e,
    input a,
    input b,
    output f
    );
    wire y0,y1,y2,y3;
    
    day5_decoder_2to4_with_enable decoder(e,a,b,y0,y1,y2,y3);
    assign f= y1|y2; // xor
    
    
endmodule
