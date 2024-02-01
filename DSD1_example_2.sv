module example_2(
	input logic [7:0] a,b,
	input logic sel,
	output logic [7:0]y );
always_comb begin
case(sel)
1'b1:y=a;
1'b0:y=b;
default y=a;
endcase
end
endmodule 