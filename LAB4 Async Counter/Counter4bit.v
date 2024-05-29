`timescale 1ns / 1ps

module Counter4bit(
input wire clk,
input wire rst,
output reg [3:0]count
);

wire [3:0]toggle;

Toggle_FF ff0(clk,1,rst,toggle[0]);
Toggle_FF ff1(~toggle[0],1,rst,toggle[1]);
Toggle_FF ff2(~toggle[1],1,rst,toggle[2]);
Toggle_FF ff3(~toggle[2],1,rst,toggle[3]);

always @(*)
begin
    count=toggle;
end
endmodule

`timescale 1ns / 1ps
module Toggle_FF(
input wire clk,
input wire T,
input wire rst,
output reg out
);

always @(posedge clk or posedge rst)
begin 
if(rst)
    out<=1'b0;
else
    if(T)
        out<=~out;
    else
        out<=out;
end
endmodule