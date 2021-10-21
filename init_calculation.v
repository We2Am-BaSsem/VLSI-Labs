/*
if inputs are A => in1 then B => in2
it will generate 16-bits output in this order:
[A3B3, A3B2, A3B1, A3B0, A2B3, A2B2, A2B1, A2B0, A1B3, A1B2, A1B1, A1B0, A0B3, A0B2, A0B1, A0B0]

*/
module init_calculations (in1,in2,out);
input [3:0] in1;
input [3:0] in2;
output [15:0] out;
wire [15:0] out;
genvar i,j;

	for(i=0; i < 4; i= i+1) begin
		for(j=0; j < 4; j= j+1) begin
			assign out[i*4+j] = in1[i] & in2[j];
		end
	end
endmodule
