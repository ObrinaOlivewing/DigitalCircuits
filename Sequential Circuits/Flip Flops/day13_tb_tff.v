`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 28.11.2023 12:31:56 
// Module Name: day13_tb_tff
//////////////////////////////////////////////////////////////////////////////////


module day13_tb_tff();
reg t, clk;
wire q;

day13_tff TFF(t, clk, q);

initial begin
 clk = 0;
 forever #46 clk = ~clk;
end

initial begin
      t = 1;
 #100 t = 0;
 #100 t = 1;
 #100 t = 0;
 #100 t = 1;
 #100 t = 0;
 #100 t = 1;
 #100 t = 1;
 #100 t = 1;
 #100 t = 0;
 #100 t = 1;
 #100 t = 0;
 #100 t = 0;
end

endmodule
