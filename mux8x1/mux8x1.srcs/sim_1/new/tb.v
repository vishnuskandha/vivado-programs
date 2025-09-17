module mux8x1_tb;

reg i0, i1, i2, i3, i4, i5, i6, i7;
reg [2:0] sel;
wire y;

mux8x1 dut (
    .i0(i0), .i1(i1), .i2(i2), .i3(i3),
    .i4(i4), .i5(i5), .i6(i6), .i7(i7),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("mux8x1_tb.vcd");
    $dumpvars(0, mux8x1_tb);

    i0 = 1; i1 = 0; i2 = 1; i3 = 0;
    i4 = 1; i5 = 0; i6 = 1; i7 = 0;

    $display("Time\t sel   i0 i1 i2 i3 i4 i5 i6 i7 | y");
    $display("------------------------------------------------");

    $monitor("%0t\t %b    %b  %b  %b  %b  %b  %b  %b  %b | %b",
             $time, sel, i0, i1, i2, i3, i4, i5, i6, i7, y);

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;

    $finish;
end

endmodule
