`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 22.10.2023 14:24:13
// Module Name: day9_tb_gray_to_binary_converter
//////////////////////////////////////////////////////////////////////////////////


module day9_tb_gray_to_binary_converter();

reg [3:0] g;
wire [3:0] b;

day9_gray_to_binary_converter GrayToBinary(g, b);

initial begin

g = 4'b0000; // initializing

#10 g = 4'b0001;
#10 g = 4'b0010;
#10 g = 4'b0011;

#10 g = 4'b0100;
#10 g = 4'b0101;
#10 g = 4'b0110;
#10 g = 4'b0111;

#10 g = 4'b1000;
#10 g = 4'b1001;
#10 g = 4'b1010;
#10 g = 4'b1011;

#10 g = 4'b1100;
#10 g = 4'b1101;
#10 g = 4'b1110;
#10 g = 4'b1111;


#10 $finish;

end
endmodule
