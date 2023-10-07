`timescale 1ns / 1ps


module xorUsingMux(
    input b,
    input a,
    output y
    );
    
    wire bBar;
    assign  bBar = ~b;
    
    Day2_simple2x1Mux XOR(b ,bBar ,a , y);
    
    
endmodule
