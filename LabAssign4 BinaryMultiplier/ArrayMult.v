`timescale 1ns / 1ps

module ArrayMult(a,b,y);
    parameter n=4,m=4;
    input [n-1:0]a;
    input [m-1:0]b;
    output reg [n+m-1:0] y;
    
    reg [n+m-1:0] product [m-1:0];
    integer i,j;
    
    always @(*) begin
        for (i = 0; i < m; i = i + 1) begin
            product[i]=0;
            for(j = 0; j < n; j = j + 1) begin
                if(a[j]==1 && b[i]==1) 
                    product[i][i+j]=1;
                else
                    product[i][i+j]=0;
            end
        end
        y=0;
        for(i = 0; i < m; i = i + 1) begin
            y= y+ product[i];
        end
    end

endmodule
