`timescale 1ns / 1ps

module One_bit_adder(A, B, cin, cout , sum);
input A,B,cin;
output cout,sum;

    xor(sum, A, B, cin);
    and(f,A,B);
    and(g,A,cin);
    and(h,cin,B);
    or(cout,f,g,h);
    
endmodule
