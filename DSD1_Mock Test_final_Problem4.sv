module problem4(
input logic rst_n, clk,
output logic [4:0] counts_var, next_counts_var,
output logic out
);
logic [4:0] counts, next_counts;
logic next_Out;
assign next_counts = (counts == 5'd31)? 5'd0 : (counts+1);
always_ff@(posedge clk) begin
if(~rst_n)
counts <= 5'd0;
else
counts <= next_counts;
end
assign out_update = (counts == 5'd31);
always_ff@(posedge clk) begin
if(~rst_n)
out <= 1'b0;
else if (out_update)
out <= ~out;
end
assign counts_var = counts;
assign next_counts_var = next_counts;
endmodule