`timescale 1ns / 1ps


module day5_tb_decoder_2to4_with_enable( );

reg e,a,b;
wire y0,y1,y2,y3;

 day5_decoder_2to4_with_enable decoder(e,a,b,y0,y1,y2,y3);
 
 initial begin
 
             e=1; a=0; b=0; 
      #10    e=1; a=0; b=1; 
      #10    e=1; a=1; b=0; 
      #10    e=1; a=1; b=1; 

      #10    e=0; a=0; b=0; 
      #10    e=0; a=0; b=1; 
      #10    e=0; a=1; b=0; 
      #10    e=0; a=1; b=1; 
      #10    $finish;
 end
  
endmodule
