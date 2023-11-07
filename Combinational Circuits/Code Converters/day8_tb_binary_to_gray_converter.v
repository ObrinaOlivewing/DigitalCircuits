`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 21.10.2023 19:57:26 
// Module Name: day8_tb_binary_to_gray_converter
//////////////////////////////////////////////////////////////////////////////////


module day8_tb_binary_to_gray_converter();

reg [2:0]b;
wire [2:0]g;

day8_binary_to_gray_converter BinaryToGray( b, g);

initial begin

b = 3'b000; // initializing

#10 b = 3'b001;
#10 b = 3'b010;
#10 b = 3'b011;

#10 b = 3'b100;
#10 b = 3'b101;
#10 b = 3'b110;
#10 b = 3'b111;

#10 $finish;

end


endmodule
