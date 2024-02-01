module example(
	input logic [7:0] a,b,
	input logic sel,
	output logic [7:0]y );
assign y=(sel==1'b1)?a:b;
endmodule 