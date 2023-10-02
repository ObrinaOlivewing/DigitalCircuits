`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//4X1 MUX using 2X1 MUX

//Instantiation file used MUX_2x1.v

//Verilog design of 4x1 mux with inputs I[0],I[1],I[2],I[3], S[0],S[1], & output Y

//////////////////////////////////////////////////////////////////////////////////


module MUX_4x1_Using_2x1(
    input wire [3:0]I,
    input wire [1:0]S,
    output  Y
    );
    
    wire P, Q;
    
    MUX_2x1 mux_2x1_P(I[1:0],S[0],P); // P = (~S[0]&I[0])|(S[0]&I[1])
    MUX_2x1 mux_2x1_Q(I[3:2],S[0],Q); // Q = (~S[0]&I[0])|(S[0]&I[1])
    MUX_2x1 mux_2x1_Y({Q,P},S[1],Y);  // Y = (~S[1]&P)|(S[1]&Q)
    
endmodule
