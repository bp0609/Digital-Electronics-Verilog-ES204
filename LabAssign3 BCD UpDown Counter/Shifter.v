`timescale 1ns / 1ps


module Shifter (clk,Qin[3:0],en,reset,Mode[1:0],Qout[3:0]);

input [3:0] Qin;
input clk,en,reset;
input [1:0]Mode;
output reg [3:0]Qout;
  
    always @(posedge clk) 
    begin
        if (reset)
            Qout = 0;
        else if(en==1) begin
            if(Mode==0)
                Qout <= Qin;
            else if(Mode==1)
                Qout <= (Qin << 1);
            else
                Qout <= (Qin >> 1);
         end
        
    end
        


endmodule