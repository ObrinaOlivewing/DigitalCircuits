`timescale 1ns / 1ps


module xorUsingMux(
    input b,
    input a,
    output y
    );
    
    wire bBar;
    assign  bBar = ~b;
    
    simple2x1MUX XOR(b ,bBar ,a , y);
    
    
endmodule
