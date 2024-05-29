`timescale 1ns / 1ps

module test_bench();

reg [7:0]a,b;
wire [15:0]y;

BinaryMult uut(a,b,y);

initial begin
    a=33;b=27;
    #10;
    a=0; b=20;#10
    a=11; b=199;#10
    a=101; b=19;#10
$finish();
end;
endmodule
