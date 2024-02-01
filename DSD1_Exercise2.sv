module Exercise2(input logic a ,b,c,d,
						output logic y);
always_comb begin
	case({a,b,c,d})
	4'b0000, 4'b0001, 4'b0010, 4'b0011, 4'b1000, 4'b1010, 4'b1110 : y=1'b1;
	default: y=1'b0; 
	endcase
end

endmodule 