`timescale 1ns / 1ps


module day7_function_using_decoder(
    input e,
    input a,
    input b,
    input c,
    output f1, f2, f3
    );
    
    wire y0,y1,y2,y3,y4,y5,y6,y7;
    
    day6_decoder_3to8_using_decoder_2to4 decoder(e,a,b,c,y0,y1,y2,y3,y4,y5,y6,y7);
    assign f1= y0|y2|y4;
    assign f2= y1|y3|y5;
    assign f3=y6 & y7;
    
endmodule
