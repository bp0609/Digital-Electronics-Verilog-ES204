// `timescale 1ns / 1ps
module K_maps(A,B,C,D,OUT);

input A,B,C,D;
output OUT;

and(w1,A,D);
and(w2,B,~C,D);
and(w3,~A,~B,~D);
or(OUT,w1,w2,w3);

endmodule



module kmaps1(A,B,C,D,OUT);
input A,B,C,D;
output OUT;
assign OUT = (A&D) | (B&~C&D) |(~A&~B&~D);
endmodule