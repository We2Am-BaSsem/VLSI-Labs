module full_adder(a,b,cin,s,cout);
input a,b,cin;
output s, cout;
wire s,cout;

assign s = (a ^ b) ^ (cin);
assign cout = (cin & (a ^ b)) | (a & b);
endmodule
