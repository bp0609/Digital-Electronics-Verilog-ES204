`timescale 1ns / 1ps
module test_bench();
reg [7:0]A,B;
reg mode;
wire [8:0]grayCode;

Grey_Code uut(A, B, mode, grayCode);
initial
begin
mode=0;
A=8'b10000000;      B=8'b00000001;  #10;
A=8'b10010010;      B=8'b01110001;  #10;
A=8'b10001010;      B=8'b10001101;  #10;
A=8'b01001010;      B=8'b01011000;  #10;
mode=1'b1;
A=8'b10010100;      B=8'b00000101;  #10;
A=8'b00110100;      B=8'b00011001;  #10;
A=8'b00100000;      B=8'b00010001;  #10;
$finish();
end
endmodule
