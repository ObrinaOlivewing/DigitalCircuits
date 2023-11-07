`timescale 1ns / 1ps


module day4_tb_decoder_2to4();

reg   a, b;
wire  y0,y1,y2,y3;

day4_decoder_2to4 decoder_tb(a, b,y0,y1,y2,y3);

initial begin
 
      a= 0; b = 0;
 #10  a= 0; b = 1;
 #10  a= 1; b = 0;
 #10  a= 1; b = 1; 
 #10  $finish;
   
end

endmodule
