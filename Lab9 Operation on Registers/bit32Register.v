`timescale 1ns / 1ps
module bit32Register(rst,D,Cy,clk,Mode,Rx,Ry,Rz);
input rst,clk;
input [511:0]D;
input [3:0]Rx,Ry,Rz,Mode;
output reg Cy;
reg [32:0]ans=0;
reg [31:0]out[15:0];
integer i;
always @(*)
begin
    if(rst) begin
            out[0]<=D[31:0];
            out[1]<=D[63:32];
            out[2]<=D[95:64];
            out[3]<=D[127:96];
            out[4]<=D[159:128];
            out[5]<=D[191:160];
            out[6]<=D[223:192];
            out[7]<=D[255:224];
            out[8]<=D[287:256];
            out[9]<=D[319:288];
            out[10]<=D[351:320];
            out[11]<=D[383:352];
            out[12]<=D[415:384];
            out[13]<=D[447:416];
            out[14]<=D[479:448];
            out[15]<=D[511:480];
            Cy=0;
        end
    
end

always @(posedge clk  ) begin
    if(~rst) begin
        if(Mode==4'b0001)begin
                ans=(out[Rx]+out[Ry]); 
                out[Rz]=ans[31:0];
                Cy=ans[32];  
            end
        else if(Mode==4'b0010) begin
        // Mode==4'b0010 
                ans=(out[Rx]&out[Ry]);
                out[Rz]=ans[31:0];
                Cy=0;    
        end
        else begin
                out[Rz]=out[Rz];
                Cy=0;
        end        
    end
end    

endmodule
