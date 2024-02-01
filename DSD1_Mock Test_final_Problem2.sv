module problem2(input logic in[3:0],
output logic z);
always_comb
begin
case(in)
4'd1,4'd2,4'd4,4'd8:z=1'b1;
default: z=1'b0;
endcase
end
endmodule 