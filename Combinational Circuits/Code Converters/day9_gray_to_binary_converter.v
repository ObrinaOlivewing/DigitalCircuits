`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 22.10.2023 14:19:50
// Module Name: day9_gray_to_binary_converter
//////////////////////////////////////////////////////////////////////////////////


module day9_gray_to_binary_converter(
    input [3:0] g,
    output [3:0] b
    );
    
    assign b[3] = g[3];
    assign b[2] = g[3] ^ g[2];
    assign b[1] = g[3] ^ g[2] ^ g[1];
    assign b[0] = g[3] ^ g[2] ^ g[1] ^ g[0];
    
endmodule
