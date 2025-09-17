module full_add_tb;
reg v, h, cin;
wire sum, carry;

full_add uut (
.v(v),
.h(h),
.cin(cin),
.sum(sum),
.carry(carry)
);


initial begin  
$monitor("v=%b h=%b cin=%b sum=%b carry=%b", v, h, cin, sum, carry);


v=0; h=0; cin=0; #10;
v=0; h=0; cin=1; #10;
v=0; h=1; cin=0; #10;
v=0; h=1; cin=1; #10;
v=1; h=0; cin=0; #10;
v=1; h=0; cin=1; #10;
v=1; h=1; cin=0; #10;
v=1; h=1; cin=1; #10; 
$finish ;
end
endmodule

