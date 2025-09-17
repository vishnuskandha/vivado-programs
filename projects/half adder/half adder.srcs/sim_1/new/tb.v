module half_adder_tb;
reg v,h;
wire sum,carry;

half_adder uut(
.v(v),
.h(h),
.sum(sum),
.carry(carry)
);

initial begin 
$display("v h | sum carry");
$display("----------------");

v = 0; h = 0; #10;
$display("%b %b | %b %b",v,h,sum,carry);

v = 0; h = 1; #10;
$display("%b %b | %b %b",v,h,sum,carry);

v = 1; h = 0; #10;
$display("%b %b | %b %b",v,h,sum,carry);

v = 1; h = 1; #10;
$display("%b %b | %b %b",v,h,sum,carry);

$finish;
end 
endmodule 