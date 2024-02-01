module Exercise3_1 (input logic [3:0] in,
						output logic z);
always_comb begin
case(in)
4'd1, 4'd3, 4'd9: z=1'b0;
default: z=1'b1;
endcase 
end
endmodule 