module mux8x1 (
    input i0, i1, i2, i3, i4, i5, i6, i7, 
    input [2:0] sel,                    
    output y                              
);

assign y = (sel == 3'b000) ? i0 :
           (sel == 3'b001) ? i1 :
           (sel == 3'b010) ? i2 :
           (sel == 3'b011) ? i3 :
           (sel == 3'b100) ? i4 :
           (sel == 3'b101) ? i5 :
           (sel == 3'b110) ? i6 :
                             i7;

endmodule
