`timescale 1ns / 1ps

module test_bench();
reg rst,clk;
reg [3:0]Rx,Ry,Rz,Mode;
reg [511:0]D;
integer i;
wire Cy;
bit32Register uut(rst,D,Cy,clk,Mode,Rx,Ry,Rz);

initial begin
    clk=0;
    forever #15 clk=~clk;
end

initial
begin
    rst=1;
    //Initialise the registers
    D=0;
    for(i=0; i<512;i=i+33) begin
        D[i]=1;
        D[i+1]=1;
        D[i+2]=1;
    end
    D[511]=1;
    D[479]=1;
    Rx=3'b0000;
    Ry=3'b0001;
    Rz=3'b0010;
    Mode = 3'b0001;
    D<=D;
    #30;
    rst=0;
    #30
    Mode=4'b0001;
    Rx=4'b1000;
    Ry=4'b1001;
    Rz=4'b1010;
    #30;
    
    Mode=4'b0010;
    Rx=4'b1010;
    Ry=4'b1011;
    Rz=4'b0110;
    #30;
    
    Mode=4'b0001;
    Rx=4'b1111;
    Ry=4'b1110;
    Rz=4'b1111;
    #30;
    
    
    
$finish();
end
endmodule
