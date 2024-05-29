`timescale 1ns / 1ps
module counter(clk,m,reset ,Mode, Q[3:0]);
input clk,Mode,m,reset;
output reg [3:0]Q;
wire slow_clk;
//Clock_divider inst1(clk, slow_clk);

always @(posedge clk, posedge reset)
//    if(reset) begin
//        if(Mode)
//    end
    if(m==0) begin
        if(Mode==0) begin
            if(reset)
                Q=0;
            else if(Q==15) begin
                Q=0;
                end
            else
                Q=Q+1;
        end
        else begin
            if(reset)
                Q=15;
            else if(Q==0)
                Q=15;
            else
                Q=Q-1;
        end
       end
   else begin
       if(Mode==0) begin
            if(reset)
                Q=0;
            else if(Q==9) begin
                Q=0;
                end
            else
                Q=Q+1;
        end
        else begin
            if(reset)
                Q=9;
            else if(Q==0)
                Q=9;
            else
                Q=Q-1;
        end 
        end
endmodule