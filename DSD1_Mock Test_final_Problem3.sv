module problem3(input logic a,b,clk,reset,
output logic q,output logic[1:0]state_var);
logic[1:0] state,next_state;
always_ff@(posedge clk)
begin
if (reset)
state<=2'b00;
else
state<=next_state;
end
always_comb
begin
case(state)
2'b00:
begin
if(a==1'b1)
next_state=2'b01;
else
next_state=2'b00;
end
2'b01:
begin
if(b==1'b1)
next_state=2'b10;
else if(b==1'b0)
next_state=2'b00;
else
next_state=2'b01;
end
2'b10:
begin
next_state=2'b00;
end
default: state=next_state;
endcase
end
always_comb
case(state)
2'd0,2'd1:q=1'b0;
2'd2:q=1'b1;
default: q=1'b0;
endcase
assign state_var=state;
endmodule

/*module problem3(
input logic clk, reset, A, B,
output logic [1:0] state_var,
output Q
);
parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
logic [1:0] state, next_state;
always_ff @(posedge clk) begin
if(reset)
state <= S0;
else
state <= next_state;
end
always_comb begin
case(state)
S0: begin
if (A==1'b1)
next_state = S1;
else
next_state = S0;
end
S1: begin
if (B==1'b1)
next_state = S2;
else if (B==1'b0)
next_state = S0;
else
next_state = S1;
end
S2: begin
next_state = S0;
end

default: next_state = state;
endcase
end
always_comb begin
case(state)
S0, S1: Q = 1'b0;
S2: Q = 1'b1;
default: Q = 1'b0;
endcase
end
assign state_var = state;
endmodule */