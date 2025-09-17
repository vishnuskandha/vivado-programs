module encoder4x2_vector (
    input wire [3:0] v,
    output wire [1:0] h
);

// Priority encoder logic: highest bit gets priority
assign h = (v[3]) ? 2'b11 :
           (v[2]) ? 2'b10 :
           (v[1]) ? 2'b01 :
           (v[0]) ? 2'b00 : 2'b00;

endmodule