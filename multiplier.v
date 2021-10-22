/*
uses 3 4-bit full adders 
*/

/*
if inputs to init_calculations() are A => in1 then B => in2
it will generate 16-bits output in this order:
[A3B3, A3B2, A3B1, A3B0, A2B3, A2B2, A2B1, A2B0, A1B3, A1B2, A1B1, A1B0, A0B3, A0B2, A0B1, A0B0]

*/

module multiplier (A,B,Sum);
input [3:0] A;
input [3:0] B;
output [7:0] Sum;
wire [15:0] init;
wire [4:0] w1;
wire [4:0] w2;
wire zero;

assign zero = 1'b0;

init_calculations i1 (A,B,init);
assign Sum[0] = init[0];
four_bit_adder f1 ({zero, init[3:1]},init[7:4], w1);
assign Sum[1] = w1[0];
four_bit_adder f2 (w1[4:1],init[11:8], w2);
assign Sum[2] = w2[0];
four_bit_adder f3 (w2[4:1],init[15:12], Sum[7:3]);

endmodule
