`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 23.10.2023 18:18:17 
// Module Name: day10_tb_2bit_comparator
//////////////////////////////////////////////////////////////////////////////////


module day10_tb_2bit_comparator();

reg [1:0]a;
reg [1:0]b;
wire g, e, s;

day10_2bit_comparator Comparator2Bit( a, b, g, e, s);

initial begin

a = 2'b00; b = 2'b00; // initializing

#10 a = 2'b01; b = 2'b11;
#10 a = 2'b10; b = 2'b10;
#10 a = 2'b11; b = 2'b01;

#10 $finish ;
end

endmodule
