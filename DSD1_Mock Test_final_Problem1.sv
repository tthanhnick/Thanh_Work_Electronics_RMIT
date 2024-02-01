module mock_test_final(input logic a,b,c,d,
output logic y);
assign y=(a&b)|(c&d)|(a&(~c)&(~d));
endmodule 