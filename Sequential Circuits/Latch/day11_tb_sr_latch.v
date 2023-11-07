`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 07.11.2023 10:41:15
// Module Name: day11_tb_sr_latch
//////////////////////////////////////////////////////////////////////////////////


module day11_tb_sr_latch();

wire q, qbar;
reg s, r;

day11_sr_latch srLatch(s, r, q, qbar);


initial begin

    s= 0; r=0;  //initializing
    
#10 s= 0; r=1;
#10 s= 1; r=0;
#10 s= 1; r=1;
#10 s= 0; r=0;
#10 $finish;

end

endmodule
