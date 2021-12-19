module preprocessing
(A,B,Adash,Bdash,Asign,Bsign);
input [15:0] A;
input [15:0] B;
output [14:0] Adash;
output [14:0] Bdash;
output Asign;
output Bsign;
reg [14:0] Adash,Bdash;
reg Asign,Bsign;

always @(*) begin
Asign <= A[15];
Bsign <= B[15];

if(A[15])
	 Adash <= -A[14:0];
else
	 Adash <= A[14:0];

if(B[15])
	 Bdash <= -B[14:0];
else
	 Bdash <= B[14:0];
end
endmodule

module multiplier
(A,B,Asign,Bsign,Product,en);
input [14:0] A;
input [14:0] B;
input Asign,Bsign;
output [29:0] Product;
output en;

assign Product = A * B;
assign en = Asign ^ Bsign;
endmodule

module postprocessing
(Cdash,en,C);
input [29:0] Cdash;
input en;
output [30:0] C;
reg [30:0] C;

always @(*) begin

C[30] = en;
if(en)
	 C[29:0] <= -Cdash;
else
	 C[29:0] <= Cdash;
end
endmodule

module IntegratedSystem
(A,B,C);
input [15:0] A;
input [15:0] B;
output [30:0] C;
wire [14:0]Adash,Bdash;
wire [29:0] Product;
wire Asign,Bsign,en;

preprocessing pre (A,B,Adash,Bdash,Asign,Bsign);
multiplier mul(Adash,Bdash,Asign,Bsign,Product,en);
postprocessing post(Product,en,C);

endmodule