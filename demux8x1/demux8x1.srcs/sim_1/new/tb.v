`timescale 1ns/1ps

module tb_demux8x1;

   
reg h;
reg v0, v1, v2;
wire y0, y1, y2, y3, y4, y5, y6, y7;

demux8x1 uut (
.h(h),
.v0(v0),
.v1(v1),
.v2(v2),
.y0(y0), .y1(y1), .y2(y2), .y3(y3),
.y4(y4), .y5(y5), .y6(y6), .y7(y7)
);
    
initial begin
$monitor("T=%0t | v2=%b v1=%b v0=%b h=%b -> y0=%b y1=%b y2=%b y3=%b y4=%b y5=%b y6=%b y7=%b",
$time, v2, v1, v0, h, y0, y1, y2, y3, y4, y5, y6, y7);

h = 1;
  {v2, v1, v0} = 3'b000; #10;
  {v2, v1, v0} = 3'b001; #10;
  {v2, v1, v0} = 3'b010; #10;
  {v2, v1, v0} = 3'b011; #10;
  {v2, v1, v0} = 3'b100; #10;
  {v2, v1, v0} = 3'b101; #10;
  {v2, v1, v0} = 3'b110; #10;
  {v2, v1, v0} = 3'b111; #10;

h = 0; {v2, v1, v0} = 3'b000; #10;

$finish;
end

endmodule
