`timescale 1ns / 1ps

module Counter4bit_tb();
reg clk,rst;
wire [3:0]count;

Counter4bit uut(clk,rst,count);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    rst=1;
    #10 rst=0;
    #200;
    
$finish();
end

endmodule
