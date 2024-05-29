`timescale 1ns / 1ps

module full_add_sub_8bit(A, B, mode, cout, sum);
input [7:0]A,B;
input mode;
output [7:0]sum;
output cout;

wire [8:0]c;
wire[8:0]Bnew;
wire [8:0]Bcomp;
two_s_complement insta({1'b0,B},Bcomp);
assign Bnew= (mode==1'b1)? Bcomp:{1'b0,B};

One_bit_adder inst1(A[0],Bnew[0],0,c[0],sum[0]);
One_bit_adder inst2(A[1],Bnew[1],c[0],c[1],sum[1]);
One_bit_adder inst3(A[2],Bnew[2],c[1],c[2],sum[2]);
One_bit_adder inst4(A[3],Bnew[3],c[2],c[3],sum[3]);
One_bit_adder inst5(A[4],Bnew[4],c[3],c[4],sum[4]);
One_bit_adder inst6(A[5],Bnew[5],c[4],c[5],sum[5]);
One_bit_adder inst7(A[6],Bnew[6],c[5],c[6],sum[6]);
One_bit_adder inst8(A[7],Bnew[7],c[6],c[7],sum[7]);
One_bit_adder inst9(0,Bnew[8],c[7],c[8],cout);

endmodule
