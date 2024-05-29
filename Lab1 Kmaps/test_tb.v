`include "contigeous_ass.v"

module Kmaps_tb();
reg A,B,C,D;
wire OUT;
K_maps uut(A,B,C,D,OUT);

initial
begin

$dumpfile("Kmaps_tb.vcd");
$dumpvars(0,Kmaps_tb);

A=1;B=0;C=1;D=0;
#10;
A=1;B=0;C=1;D=1;
#10
A=1;B=1;C=1;D=0;
#10
A=1;B=0;C=0;D=0;
#10
A=0;B=0;C=1;D=0;
#10;
$finish();
end
endmodule
