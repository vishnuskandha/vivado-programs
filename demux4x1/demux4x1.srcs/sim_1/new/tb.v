`timescale 1ns/1ps

module tb_demux;
reg h;
reg v0, v1;
wire y0, y1, y2, y3;

demux uut (
.h(h),
.v0(v0),
.v1(v1),
.y0(y0), 
.y1(y1),
.y2(y2),
.y3(y3)
    );

initial begin
$monitor("Time=%0t | v1=%b v0=%b h=%b -> y0=%b y1=%b y2=%b y3=%b",
$time, v1, v0, h, y0, y1, y2, y3);

       
h = 1; v1 = 0; v0 = 0; #10; 
h = 1; v1 = 0; v0 = 1; #10;
h = 1; v1 = 1; v0 = 0; #10;  
h = 1; v1 = 1; v0 = 1; #10;
h = 0; v1 = 0; v0 = 0; #10;
$finish;
end

endmodule
