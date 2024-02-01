module example_1(
	input logic [7:0] a,b,
	input logic sel,
	output logic [7:0]y );
always_comb begin
if(sel==1'b1)
y=a;
else
y=b;
end
endmodule 