`timescale 1ns / 1ps
module Grey_Code(A, B, mode, grayCode);
input [7:0]A,B;
input mode;
output [8:0]grayCode;

wire cout;
wire [7:0]sum;

full_add_sub_8bit uut0(A,B,mode,cout,sum);


and(grayCode[8],1'b1,cout);
xor(grayCode[7],cout,sum[7]);
xor(grayCode[6],sum[7],sum[6]);
xor(grayCode[5],sum[6],sum[5]);
xor(grayCode[4],sum[5],sum[4]);
xor(grayCode[3],sum[4],sum[3]);
xor(grayCode[2],sum[3],sum[2]);
xor(grayCode[1],sum[2],sum[1]);
xor(grayCode[0],sum[1],sum[0]);

endmodule
