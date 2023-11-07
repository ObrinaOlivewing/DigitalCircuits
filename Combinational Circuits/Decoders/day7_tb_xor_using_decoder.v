`timescale 1ns / 1ps

module day7_tb_xor_using_decoder();

reg e,a,b;
wire f;

 day7_xor_using_decoder decoder1(e,a,b,f);
 //assign f= y1|y2;
 
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
