module Exercise3_2( input logic[3:0]in,
							 output logic z);
	always_comb begin
	if(in==1 || in==3 || in ==9)
	z=1'b0;
	else
	z=1'b1;
	
	end

endmodule 
