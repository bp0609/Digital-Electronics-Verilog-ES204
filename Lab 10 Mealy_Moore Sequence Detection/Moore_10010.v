`timescale 1ns / 1ps
module Moore_10010(clk,rest,w,z,slow_clk);
input clk,rest,w;
output z,slow_clk;
reg [2:0]y,Y;

parameter [2:0]A=3'b000,B=3'b001,C=3'b010,D=3'b011,E=3'b100,F=3'b101;
wire slow_clk;
Clock_divider inst1(clk, slow_clk);
//Define the next state combinational logic
always @(w or y)
    case(y) 
        A: if(w) Y=B;
            else Y=A;
        B: if(w) Y=B;
            else Y=C;
        C: if(w) Y=B;
            else Y=D;
        D: if(w) Y=E;
            else Y=A;
        E: if(w) Y=B;
            else Y=F;
        F: if(w) Y=B;
            else Y=D;
        default: Y=2'bxx;
    endcase


//Define sequential block
always @(negedge rest or posedge slow_clk)
    if(rest==0) 
        y<=A;
    else
        y<=Y;

    //Define output
    assign z=(y[0] && (~y[1]) && y[2]);
    
endmodule
