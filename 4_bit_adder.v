/*
uses 4 1-bit full adders (with cins and couts)
out[4] is the the cout of the in1[3],in2[3]
cin0 is by defualt 0 and not need for this lab
other cins (intermediate results) are wired like: w[0] connects cout0 to cin1 
*/

module four_bit_adder (in1,in2,out);
input [3:0] in1;
input [3:0] in2;
output [4:0] out;
wire [2:0] w;

full_adder f1 (in1[0],in2[0],1'b0,out[0],w[0]);
full_adder f2 (in1[1],in2[1],w[0],out[1],w[1]);
full_adder f3 (in1[2],in2[2],w[1],out[2],w[2]);
full_adder f4 (in1[3],in2[3],w[2],out[3],out[4]);

endmodule
