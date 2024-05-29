`timescale 1ns / 1ps

module lab1_multiple(select, num, out );
input [2:0]select;
input [4:0]num;
output reg out;
reg a,b,c,d,e;
always @(*)  
begin
a=num[4]; b=num[3]; c=num[2]; d=num[1]; e=num[0];
    case (select)
        3'b000: out = ~num[0];
        3'b001: out = ((~a)&(~b)&(~c)&(~d)&(~e)) | ((~a)&(~b)&(~c)&d&e) |((~a)&(~b)&c&d&(~e)) |((~a)&b&(~c)&(~d)&e) |((~a)&b&c&d&e) |((~a)&b&c&(~d)&(~e)) |(a&b&(~c)&(~d)&(~e)) |(a&b&(~c)&d&e) |(a&b&c&d&(~e)) |(a&(~b)&(~c)&d&(~e)) |(a&(~b)&c&(~d)&e) ;
        3'b010: out = (~d) & (~e);
        3'b011: out = ((~a)&(~b)&(~c)&(~d)&(~e)) |((~a)&(~b)&c&(~d)&e) |((~a)&b&(~c)&d&(~e)) |((~a)&b&c&d&e) |(a&b&(~c)&(~d)&e) |(a&b&c&d&(~e)) |(a&(~b)&c&(~d)&(~e)) ;
        3'b100: out = ((~a)&(~b)&(~c)&(~d)&(~e)) |((~a)&(~b)&c&d&(~e)) |((~a)&b&c&(~d)&(~e)) |(a&b&(~c)&(~d)&(~e)) |(a&b&c&d&(~e)) |(a&(~b)&(~c)&d&(~e)) ;
        3'b101: out = ((~a)&(~b)&(~c)&(~d)&(~e)) |((~a)&(~b)&c&d&e) |((~a)&b&c&d&(~e)) |(a&b&c&(~d)&(~e)) |(a&(~b)&c&(~d)&e);
        3'b110: out = (~c)&(~d)&(~e);
        3'b111: out = ((~a)&(~b)&(~c)&(~d)&(~e)) |((~a)&b&(~c)&(~d)&e) |(a&b&(~c)&d&e) |(a&(~b)&(~c)&d&(~e)) ;
        default: out = 5'b0;
    endcase
    
end
endmodule
