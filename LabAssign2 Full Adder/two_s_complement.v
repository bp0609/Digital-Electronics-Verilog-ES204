`timescale 1ns / 1ps

module two_s_complement(A,out);
input [8:0]A;
output [8:0]out;
wire c[8:0];
One_bit_adder inst21(~A[0],1'b1,0,c[0],out[0]);
One_bit_adder inst22(~A[1],0,c[0],c[1],out[1]);
One_bit_adder inst23(~A[2],0,c[1],c[2],out[2]);
One_bit_adder inst24(~A[3],0,c[2],c[3],out[3]);
One_bit_adder inst25(~A[4],0,c[3],c[4],out[4]);
One_bit_adder inst26(~A[5],0,c[4],c[5],out[5]);
One_bit_adder inst27(~A[6],0,c[5],c[6],out[6]);
One_bit_adder inst28(~A[7],0,c[6],c[7],out[7]);
One_bit_adder inst29(~A[8],0,c[7],c[8],out[8]);

endmodule
