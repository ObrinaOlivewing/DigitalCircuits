`timescale 1ns / 1ps


module day7_tb_function_using_decoder();

reg e,a,b,c;
wire f1,f2,f3;

day7_function_using_decoder decoder(e,a,b,c,f1,f2,f3);

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
