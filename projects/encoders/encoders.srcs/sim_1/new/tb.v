`timescale 1ns / 1ps
module encoder4x2_vector_tb;

reg  [3:0] v;
wire [1:0] h;

encoder4x2_vector uut (
.v(v),
.h(h)
);

initial begin
$display("time\tinput(v)\toutput(h)");
$display("-----------------------------");

v = 4'b0001; #10; $display("%0t\t%b\t\t%b", $time, v, h);
v = 4'b0010; #10; $display("%0t\t%b\t\t%b", $time, v, h);
v = 4'b0100; #10; $display("%0t\t%b\t\t%b", $time, v, h);
v = 4'b1000; #10; $display("%0t\t%b\t\t%b", $time, v, h);
v = 4'b0000; #10; $display("%0t\t%b\t\t%b", $time, v, h);
$finish;
end
endmodule