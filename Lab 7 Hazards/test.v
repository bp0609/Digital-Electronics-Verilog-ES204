`timescale 1ns / 1ps

module test();
reg A,B,C;
wire out;

Hazard uut(A,B,C,out);
initial 
begin
    A=0;B=0;C=0;#30
    A=1;B=0;C=0;#30
    A=1;B=0;C=1;#30
    A=1;B=1;C=1;#30
    
    A=1;B=0;C=1;#30
    A=0;B=1;C=0;#30
    A=1;B=1;C=0;#30
    

$finish();
end
endmodule
