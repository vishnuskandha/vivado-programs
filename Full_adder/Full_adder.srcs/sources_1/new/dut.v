module full_add(v,h,cin,sum,carry);
input v,h,cin;
output sum,carry;
assign sum = v^h^cin;
assign carry = (v&h)|(h&cin)|(v&cin);
endmodule 