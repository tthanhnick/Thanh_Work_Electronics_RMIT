/* module tutorial(input logic a,b,clk,rst,
					output logic q);
					logic[1:0] state,next_state;
always_ff@(posedge clk)
begin
if(rst)
state<=2'b00;
else 
state <=next_state;
end

always_comb begin
case(state)
2'b00:begin
if(a==1'b1)
next_state=2'b01;
else if(a==1'b0)
next_state=2'b00;
end
2'b01:begin
if(b==1'b1)
next_state=2'b10;
else if(b==1'b0)
next_state=2'b00;
else
next_state=2'b01;
end
2'b10:begin
next_state=2'b00;
end
default:next_state=state;
endcase
end
*/

always_comb
begin
case(state)
2'b00,2'b01:q=1'b0;
2'b10:q=1'b1;
default
q=1'b0;
endcase
end
endmodule 


module tutorial(input logic a,b,clk,rst,
output logic q);
logic[1:0] state,next_state;

always_ff@(posedge clk) begin
if(rst) 
state<=2'b00;
else
state<=next_state;
end

always_comb begin
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
default:
next_state=state;
endcase
end

always_comb
begin
case(state)
2'b00,2'b01:q=0;
2'b10:q=1;
endcase
end

endmodule 