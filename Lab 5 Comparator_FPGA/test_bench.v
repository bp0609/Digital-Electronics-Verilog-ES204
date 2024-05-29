`timescale 1ns / 1ps

module test_bench();
reg  [3:0]A;
reg [3:0]B;
wire f;

comparator uut(A,B,f);

initial
begin
A= 4'b0000; B=4'b0001;#10
A= 4'b0100; B=4'b0100;#10


$finish();
end

endmodule
