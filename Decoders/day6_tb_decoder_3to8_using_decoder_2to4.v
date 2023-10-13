`timescale 1ns / 1ps

//testbench for 3x8 decoder 

module day6_tb_decoder_3to8_using_decoder_2to4();
reg e,a,b,c;
wire y0,y1,y2,y3,y4,y5,y6,y7;

day6_decoder_3to8_using_decoder_2to4 decoder(e,a,b,c,y0,y1,y2,y3,y4,y5,y6,y7);

initial begin
 
            e=1; a=0; b=0; c=0; //y0
     #10    e=1; a=0; b=0; c=1; //y1
     #10    e=1; a=0; b=1; c=0; //y2
     #10    e=1; a=0; b=1; c=1; //y3
     
     #10    e=1; a=1; b=0; c=0; //y4
     #10    e=1; a=1; b=0; c=1; //y5
     #10    e=1; a=1; b=1; c=0; //y6
     #10    e=1; a=1; b=1; c=1; //y7
     
     // when enable=o all o/p will be zero
     #10    e=0; a=0; b=0; c=0;
     #10    e=0; a=0; b=0; c=1; 
     #10    e=0; a=0; b=1; c=0; 
     #10    e=0; a=0; b=1; c=1; 

     #10    e=0; a=1; b=0; c=0; 
     #10    e=0; a=1; b=0; c=1; 
     #10    e=0; a=1; b=1; c=0; 
     #10    e=0; a=1; b=1; c=1; 
     #10    $finish;

end

endmodule
