`timescale 1ns / 1ps

module comparator(A, B, f);
input [3:0]A;
input [3:0]B;
output f;

assign f= (A==B) ? 1:0;

endmodule
