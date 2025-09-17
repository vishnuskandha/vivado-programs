module mux4x1_tb;
reg i0, i1, i2, i3;
reg [1:0] sel;
wire y;

mux4x1 dut (
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .sel(sel),
    .y(y)
);

initial begin 
    i0 = 1; i1 = 0; i2 = 1; i3 = 0;
    
    $display("sel i0 i1 i2 i3 | y");
    $display("----------------------");

    sel = 2'b00; #10; $display("%b   %b  %b  %b  %b | %b", sel, i0, i1, i2, i3, y);
    sel = 2'b01; #10; $display("%b   %b  %b  %b  %b | %b", sel, i0, i1, i2, i3, y);
    sel = 2'b10; #10; $display("%b   %b  %b  %b  %b | %b", sel, i0, i1, i2, i3, y);
    sel = 2'b11; #10; $display("%b   %b  %b  %b  %b | %b", sel, i0, i1, i2, i3, y);

    $finish;
end 
endmodule
