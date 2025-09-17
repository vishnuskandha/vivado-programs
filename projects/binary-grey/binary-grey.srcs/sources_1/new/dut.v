module binary_gray(
    input  [5:0] bin,  
    output [5:0] gray
);
    assign gray[5] = bin[5];
    assign gray[4] = bin[5] ^ bin[4];
    assign gray[3] = bin[4] ^ bin[3];
    assign gray[2] = bin[3] ^ bin[2];
    assign gray[1] = bin[2] ^ bin[1];
    assign gray[0] = bin[1] ^ bin[0];
    
endmodule