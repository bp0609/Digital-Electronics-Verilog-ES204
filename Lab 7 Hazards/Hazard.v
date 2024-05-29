`timescale 1ns / 1ps

module Hazard(A,B,C,out);
input A,B,C;
output out;
or G1(g1,A,B);
not #2  N1(n1,A);
or G2(g2,n1,C);
and G3(g3, g1,g2);
not #2 N2(n2,B);
and G4(g4,n2,A);
or G5(out,g3,g4);
endmodule
