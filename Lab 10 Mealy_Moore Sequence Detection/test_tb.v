`timescale 1ns / 1ps
module test_tb();
wire z;
reg w,clk,rest;

Mealy_10010 uut(clk,rest,w,z);
initial 
begin
clk=0;
    forever #5 clk=~clk;
end

initial 
begin
rest=0;
#2 rest=1;
w=0;#10
w=1;#10
w=0;#10
w=0;#10
w=1;#10
w=0;#10
w=0;#10
w=1;#10
w=0;#10
w=1;#10
$finish();
end
endmodule
