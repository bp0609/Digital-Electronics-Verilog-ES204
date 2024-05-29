`timescale 1ns / 1ps
module BCD_counter(clk,en, reset, Mode, Q[3:0]);
input clk,reset,Mode,en;
output [3:0]Q;
 
T_ff inst1 (1&en, clk, reset| (Mode&(Q[0] & Q[3])), (Mode&((Q[0]|Q[1]|Q[2]|Q[3]))),  Q[0]);
T_ff inst2((Mode^Q[0])&en, clk, reset | (Mode&(Q[0]&Q[3])) | (Mode&((Q[0]|Q[1]|Q[2]|Q[3]))) , 0, Q[1]);
T_ff inst3(((Mode^Q[1])&(Mode^Q[0])&en),clk, reset | (Mode&(Q[0]&Q[3])) | (Mode&((Q[0]|Q[1]|Q[2]|Q[3]))) , 0, Q[2]);
T_ff inst4(((Mode^Q[2])&(Mode^Q[1])&(Mode^Q[0])&en),clk, reset | (Mode&(Q[0]&Q[3])) | (Mode&((Q[0]|Q[1]|Q[2]|Q[3]))) , 0,Q[3]);


endmodule