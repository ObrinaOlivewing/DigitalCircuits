`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 28.11.2023 09:45:43
// Module Name: day13_tb_dff
//////////////////////////////////////////////////////////////////////////////////


module day13_tb_dff();
reg d, clk;
wire q;

day13_dff DFF(d, clk, q);

initial begin
clk = 1;
forever #30 clk = ~clk;
end

always@ (negedge clk)
begin
     d=1;
#100 d=0;
#100 d=1;
#100 d=1;
#100 d=0;
#100 d=1;
#100 d=0;
#100 d=0;
#100 d=1;
#100 d=0;
#100 d=1;
#100 d=0;
#100 d=1;
end
endmodule
