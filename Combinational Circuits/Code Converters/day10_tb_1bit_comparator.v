`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 23.10.2023 17:31:24
// Module Name: day10_tb_1bit_comparator
//////////////////////////////////////////////////////////////////////////////////


module day10_tb_1bit_comparator();

reg a , b;
wire g , e , s;

day10_1bit_comparator Comparator1Bit (a, b, g, e, s);

initial begin

a= 0; b= 0; //initializing

#10 a= 0; b= 1;
#10 a= 1; b= 0;
#10 a= 1; b= 1;

#10 $finish ;

end

endmodule
