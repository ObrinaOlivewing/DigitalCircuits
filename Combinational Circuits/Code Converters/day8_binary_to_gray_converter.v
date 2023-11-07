`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 21.10.2023 19:49:58
// Module Name: day8_binary_to_gray_converter
//////////////////////////////////////////////////////////////////////////////////


module day8_binary_to_gray_converter(
    input [2:0] b,
    output [2:0] g
    );
    
    assign g[2] = b[2];
    assign g[1] = b[2] ^ b[1]; // b[2] xor b[1]
    assign g[0] = b[1] ^ b[0]; // b[1] xor b[0]
    
endmodule
