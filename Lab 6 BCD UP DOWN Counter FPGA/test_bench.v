`timescale 1ns / 1ps
module test_bench();
reg clk,m,Mode,reset,slow_clk;
wire [3:0]Q;
counter uut(clk,m,reset ,Mode, Q);

initial 
begin
clk = 1;
    forever #5 clk = ~clk;
end

initial
begin
    reset=1;
    m=0;Mode=0;
    #5;
    reset=0;
    #55;
//    m=1;
    Mode=1;
    #100;
$finish();
end
endmodule
