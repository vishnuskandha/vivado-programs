module tb_logic_gates;

reg a,b ;
wire and_out,or_out,not_a,nand_out,nor_out,xor_out,xnor_out;

logic_gates dut(
.a(a),.b(b),
.and_out(and_out),
.or_out(or_out),
.not_a(not_a),
.nand_out(nand_out),
.nor_out(nor_out),
.xor_out(xor_out),
.xnor_out(xnor_out)
);

initial begin
 $display("a b | and or not nand nor xor xnor");
 $display("-----------------------------------");
 
 a=0; b=0; #10;
 $display("%b %b | %b %b %b %b %b %b %b",a,b,and_out,or_out,not_a,nand_out,nor_out,xor_out,xnor_out);
 
  a=0; b=1; #10;
 $display("%b %b | %b %b %b %b %b %b %b",a,b,and_out,or_out,not_a,nand_out,nor_out,xor_out,xnor_out);
 
  a=0; b=0; #10;
 $display("%b %b | %b %b %b %b %b %b %b",a,b,and_out,or_out,not_a,nand_out,nor_out,xor_out,xnor_out);
 
   a=0; b=1; #10;
 $display("%b %b | %b %b %b %b %b %b %b",a,b,and_out,or_out,not_a,nand_out,nor_out,xor_out,xnor_out);
 
 $finish;
 end 
 endmodule 
