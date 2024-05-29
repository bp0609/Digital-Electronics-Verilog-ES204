`timescale 1ns / 1ps

module BinaryMult(a,b,y);
    parameter n=4,m=4;
    input [n-1:0]a;
    input [m-1:0]b;
    output reg [n+m-1:0] y;
    reg [n+m-1:0] product;
    integer i;
    
    // size of a is n bits and size of b is m bits
    always @(*) begin
        product = 0;
        for (i = m-1; i >= 0; i = i - 1) begin
            if (b[i]==1) begin 
                product = product + a; end
            if(i>0) begin
                 product = product<<1; end
        end
        y = product;
    end

endmodule
