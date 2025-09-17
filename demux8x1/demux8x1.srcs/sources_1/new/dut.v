module demux8x1 (
    input h,  
    input v0, v1, v2,
    output y0, y1, y2, y3, y4, y5, y6, y7
);

wire nv0, nv1, nv2;


not (nv0, v0);
not (nv1, v1);
not (nv2, v2);


and (y0, h, nv2, nv1, nv0); 
and (y1, h, nv2, nv1,  v0);
and (y2, h, nv2,  v1, nv0);
and (y3, h, nv2,  v1,  v0);
and (y4, h,  v2, nv1, nv0);
and (y5, h,  v2, nv1,  v0); 
and (y6, h,  v2,  v1, nv0);
and (y7, h,  v2,  v1,  v0);

endmodule
