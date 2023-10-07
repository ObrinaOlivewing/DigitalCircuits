`timescale 1ns / 1ps


module simple2x1MUX(
    input wire i0,
    input wire i1,
    input wire s,
    output reg y
    );
    
  always@(i0,i1,s)
  begin
       y = (~s&i0)|(s&i1);
  end  
    
endmodule
