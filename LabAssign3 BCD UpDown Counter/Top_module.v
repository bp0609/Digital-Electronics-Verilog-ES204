`timescale 1ns / 1ps
module top_module(clk , en, reset, Mode_count, Mode_shift[1:0], Counter[3:0], Out[3:0]);

input clk,en,reset,Mode_count;
input [1:0]Mode_shift;
output [3:0] Counter, Out;

BCD_counter coun(clk,en,reset,Mode_count,Counter);
Shifter shift (clk,Counter, ~en, reset, Mode_shift,Out);

endmodule