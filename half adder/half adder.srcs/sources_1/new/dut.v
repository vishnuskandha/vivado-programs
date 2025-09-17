module half_adder (
input v,
input h,
output sum,
output carry
);
assign sum = v^h;
assign carry = v&h;
endmodule