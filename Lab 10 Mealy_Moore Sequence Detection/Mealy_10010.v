`timescale 1ns / 1ps
module Mealy_10010(clk,rest,w,z,slow_clk);
input clk,rest,w;
output reg z;
output slow_clk;
reg [2:0]y,Y;

parameter [2:0]A=3'b000,B=3'b001,C=3'b010,D=3'b011,E=3'b100;
wire slow_clk;
Clock_divider inst2(clk, slow_clk);

//Define the next state combinational logic
always @(w or y)    begin
    case(y) 
        A: if(w) begin
            Y=B;z=0;
         end
        else begin
            Y=A;z=0;
        end
        B: if(w) begin
            Y=B;z=0;
         end
        else begin
            Y=C;z=0;
        end
        C: if(w) begin
            Y=B;z=0;
         end
        else begin
            Y=D;z=0;
        end
        D: if(w) begin
            Y=E;z=0;
         end
        else begin
            Y=A;z=0;
        end
        E: if(w) begin
            Y=B;z=0;
         end
        else begin
            Y=C;z=1;
        end
        default:begin Y=2'bxx; z=0; end
    endcase
end

//Define sequential block
always @(negedge rest or posedge slow_clk)
    if(rest==0) begin
        y<=A; end
    else
        y<=Y;
endmodule
