`timescale 1ns / 1ps
module tb_binary_gray;
reg [5:0] bin;
wire [5:0] gray;

binary_gray uut (
    .bin(bin),
    .gray(gray)
);

initial begin  
    bin = 6'b101010;
    #10;
    $display("binary input = %b, gray output = %b", bin, gray);
    bin = 6'b110011; 
    #10;
    $display("binary input = %b, gray output = %b", bin, gray);
    $finish;
end
endmodule