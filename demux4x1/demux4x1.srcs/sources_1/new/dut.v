module demux (
input h, 
input v0, v1,    
output y0, y1, y2, y3
);

wire nv0, nv1;

not (nv0, v0);
not (nv1, v1);

and (y0, h, nv1, nv0);
and (y1, h, nv1, v0);
and (y2, h, v1, nv0);
and (y3, h, v1, v0);

endmodule





