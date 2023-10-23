
module day10_tb_4bit_comparator();

reg [3:0]a;
reg [3:0]b;
wire g, e, s;

day10_4bit_comparator Comparator4Bit(a, b, g, e, s);

initial begin

a = 4'b0000; b = 4'b0000;// initializing

#10 a = 4'b0001; b = 4'b0011;
#10 a = 4'b0010; b = 4'b0010;
#10 a = 4'b0011; b = 4'b0001; 

#10 a = 4'b0100; b = 4'b0100;
#10 a = 4'b0101; b = 4'b0111;
#10 a = 4'b0110; b = 4'b0101;
#10 a = 4'b0111; b = 4'b0110;

#10 a = 4'b1000; b = 4'b1011;
#10 a = 4'b1001; b = 4'b1010;
#10 a = 4'b1010; b = 4'b1001;
#10 a = 4'b1011; b = 4'b1000;

#10 a = 4'b1100; b= 4'b1101;
#10 a = 4'b1101; b = 4'b1100;
#10 a = 4'b1110; b = 4'b1111; 
#10 a = 4'b1111; b = 4'b1110;


#10 $finish;

end

endmodule