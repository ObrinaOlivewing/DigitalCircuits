`timescale 1ns / 1ps
// Testbench for 1x4 Demux implementation

module Day3_Demux_1x4_TB();

reg  x, s1, s0;
wire y0,y1,y2,y3;

Day3_Demux_1x4  demuxTB (x, s1, s0,y0,y1,y2,y3 );

initial 
  begin
    x= 1; s1= 0; s0=0;
  #10 x= 1; s1= 0; s0=1;
  #10 x= 1; s1= 1; s0=0;
  #10 x= 1; s1= 1; s0=1;
  #10 $finish;
  
  end
endmodule
