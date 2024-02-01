module sequential_circuit(
input logic clk, reset, A, B,
output logic [1:0] state_var, next_state_var,
output Q



);



logic [1:0] state, next_state;



always_ff @(posedge clk) begin
if(reset)
state <= 2'b00;
else
state <= next_state;



end



always_comb begin
case(state)
2'b00: begin
if (A==1'b1)
next_state = 2'b01;
else
next_state = 2'b00;
end

2'b01: begin
if (B==1'b1)
next_state = 2'b10;
else if (B==1'b0)
next_state = 2'b00;
else
next_state = 2'b01;
end

2'b10: begin
next_state = 2'b00;
end


default: next_state = state;

endcase



end



always_comb begin
case(state)
2'b00, 2'b01: Q = 1'b0;
2'b10: Q = 1'b1;
default: Q = 1'b0;
endcase



end



assign state_var = state;
assign next_state_var = next_state;



endmodule