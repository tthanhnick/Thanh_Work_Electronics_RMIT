module Exercise3_3( input logic[3:0]in,
							 output logic z);
	always_comb begin
	if(in==4'b0001 || in==4'b0011 || in ==4'b1001)
	z=1'b0;
	else
	z=1'b1;
	
	end

endmodule 
