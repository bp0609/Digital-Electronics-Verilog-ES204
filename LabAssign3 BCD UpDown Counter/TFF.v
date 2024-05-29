`timescale 1ns / 1ps
module T_ff(input T,input clk, input reset,input preset,output reg Qout);
always @(posedge clk or reset or preset)
    begin
        if(reset)
            Qout=0;
        else if(preset)
            Qout=1;
        else
            if(T)
                Qout <= ~Qout;
            else
                Qout <= Qout;
    end
endmodule
