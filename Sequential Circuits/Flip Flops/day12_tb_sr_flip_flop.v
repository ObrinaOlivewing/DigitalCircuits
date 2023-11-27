`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 08.11.2023 21:37:32
// Module Name: day12_tb_sr_flip_flop
//////////////////////////////////////////////////////////////////////////////////


module day12_tb_sr_flip_flop();
reg s,r, clk;
wire q, qbar;

day12_sr_flip_flop SR_FF(s,r,clk,q,qbar);

initial begin
clk =0;
forever #5 clk= ~clk;
end

initial begin 
       s= 1; r= 0;
 #100; s= 0; r= 1; 
 #100; s= 0; r= 0; 
 #100; s= 1; r=1; 
 #100; s= 1; r= 0;
 #100; s= 0; r= 1; 
 #100; s= 0; r= 0; 
 #100; s= 1; r=1;
 #100; s= 1; r= 0;
 #100; s= 0; r= 1; 
 #100; s= 0; r= 0; 
 #100; s= 1; r=1; 
 #100; s= 1; r= 0;
 #100; s= 0; r= 1; 
 #100; s= 0; r= 0; 
 #100; s= 1; r=1;
 #100; $finish;   
end 
endmodule
