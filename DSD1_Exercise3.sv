module Exercise3(input logic [3:0]in,
						output logic z);
always_comb begin
	case(in)
	4'b0000, 4'b0001, 4'b0011, 4'b1001: z=1'b0;
	default: z=1'b1; 
	endcase
end

endmodule 