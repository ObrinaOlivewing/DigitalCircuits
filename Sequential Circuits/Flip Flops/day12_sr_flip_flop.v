`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 08.11.2023 16:12:29
// Module Name: day12_sr_flip_flop
//////////////////////////////////////////////////////////////////////////////////


module day12_sr_flip_flop(s,r,clk, q, qbar);

input s,r,clk;
output qbar;
output reg q;

assign qbar = ~q;

always@(posedge clk)
begin
case({s,r})
  2'b00: q<= q;
  2'b01: q<= 1'b0;
  2'b10: q<= 1'b1;
  2'b11: q<= 1'bx;
  
endcase
end
endmodule
