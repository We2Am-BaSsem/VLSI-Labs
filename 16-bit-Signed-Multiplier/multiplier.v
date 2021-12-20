module preprocessing
(A,B,Adash,Bdash,Asign,Bsign, clk);
input [15:0] A;
input [15:0] B;
input clk; 
output [14:0] Adash;
output [14:0] Bdash;
output Asign;
output Bsign;
reg [14:0] Adash,Bdash;
reg Asign,Bsign;

always @(posedge clk) begin
Asign <= A[15];
Bsign <= B[15];

if(A[15])
	 
	 Adash[14:0] <= -A; //should do 2's comp on all ?
else
	 Adash <= A[14:0];

if(B[15])
	 Bdash[14:0] <= -B; //should do 2's comp on all ?
else
	 Bdash <= B[14:0];
end
endmodule

module multiplier
(A,B,Asign,Bsign,Product,en, clk);
input [14:0] A;
input [14:0] B;
input clk;
input Asign,Bsign;
output [29:0] Product;
output en;
reg [29:0] Product;
reg en;

always @(posedge clk) begin
	 Product <= A * B;
	 en <= Asign ^ Bsign;
end
endmodule

module postprocessing
(Cdash,en,C, clk);
input [29:0] Cdash;
input en;
input clk;
output [30:0] C;
reg [30:0] C;

always @(posedge clk) begin

C[30] = en;
if(en)
	 C[29:0] <= -Cdash;
else
	 C[29:0] <= Cdash;
end
endmodule

module IntegratedSystem
(A,B,C, clk);
input clk;
input [15:0] A;
input [15:0] B;
output [30:0] C;

wire [14:0]Adash,Bdash;
wire [29:0] Product;
wire Asign,Bsign,en;

preprocessing pre (A,B,Adash,Bdash,Asign,Bsign,clk);
multiplier mul(Adash,Bdash,Asign,Bsign,Product,en,clk);
postprocessing post(Product,en,C,clk);

endmodule