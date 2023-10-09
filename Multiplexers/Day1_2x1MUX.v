`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//Verilog design of 2x1 mux with inputs I[0],I[1], S & output Y

//////////////////////////////////////////////////////////////////////////////////



module Day1_2x1MUX(
    input wire [1:0]I,
    input wire S,
    output reg Y
    );
    
    always@(I or S)
    begin
    
    Y= (~S&I[0])|(S&I[1]);
    
    end
    
endmodule
