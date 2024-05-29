`timescale 1ns / 1ps

module lab1_decoder(select, num, out );
input [2:0]select;
input [4:0]num;
output reg out;
reg [9:2]decoder3x8;
reg [31:0]decoder5x32;
reg mult2, mult3, mult4, mult5, mult6, mult7, mult8, mult9, 
    result2, result3, result4, result5, result6, result7, result8, result9;


always@(*) begin
    out=1'b0;
    decoder3x8=8'b0;
    decoder5x32=32'b0;
    case(select)
        3'b000: decoder3x8[2] =1;
        3'b001: decoder3x8[3] =1; 
        3'b010: decoder3x8[4] =1; 
        3'b011: decoder3x8[5] =1;
        3'b100: decoder3x8[6] =1; 
        3'b101: decoder3x8[7] =1;
        3'b110: decoder3x8[8] =1; 
        3'b111: decoder3x8[9] =1;
        default: decoder3x8 = 8'b0;
    endcase
    case(num)
        32'b00000: decoder5x32[0] = 1;
        32'b00001: decoder5x32[1] = 1;
        32'b00010: decoder5x32[2] = 1;
        32'b00011: decoder5x32[3] = 1;
        32'b00100: decoder5x32[4] = 1;
        32'b00101: decoder5x32[5] = 1;
        32'b00110: decoder5x32[6] = 1;
        32'b00111: decoder5x32[7] = 1;
        32'b01000: decoder5x32[8] = 1;
        32'b01001: decoder5x32[9] = 1;
        32'b01010: decoder5x32[10] = 1;
        32'b01011: decoder5x32[11] = 1;
        32'b01100: decoder5x32[12] = 1;
        32'b01101: decoder5x32[13] = 1;
        32'b01110: decoder5x32[14] = 1;
        32'b01111: decoder5x32[15] = 1;
        32'b10000: decoder5x32[16] = 1;
        32'b10001: decoder5x32[17] = 1;
        32'b10010: decoder5x32[18] = 1;
        32'b10011: decoder5x32[19] = 1;
        32'b10100: decoder5x32[20] = 1;
        32'b10101: decoder5x32[21] = 1;
        32'b10110: decoder5x32[22] = 1;
        32'b10111: decoder5x32[23] = 1;
        32'b11000: decoder5x32[24] = 1;
        32'b11001: decoder5x32[25] = 1;
        32'b11010: decoder5x32[26] = 1;
        32'b11011: decoder5x32[27] = 1;
        32'b11100: decoder5x32[28] = 1;
        32'b11101: decoder5x32[29] = 1;
        32'b11110: decoder5x32[30] = 1;
        32'b11111: decoder5x32[31] = 1;
        default: decoder5x32=31'b0;
    endcase

    mult2=decoder5x32[2] | decoder5x32[4] | decoder5x32[6] | decoder5x32[8] | decoder5x32[10] | decoder5x32[12] | decoder5x32[14] | decoder5x32[16] | decoder5x32[18] |decoder5x32[20] | decoder5x32[22] | decoder5x32[24] | decoder5x32[26] | decoder5x32[28] | decoder5x32[30] ;
    mult3=decoder5x32[3] |decoder5x32[6] | decoder5x32[9] | decoder5x32[12] | decoder5x32[15] | decoder5x32[18] | decoder5x32[21] | decoder5x32[24] | decoder5x32[27] | decoder5x32[30] ;
    mult4=decoder5x32[4] | decoder5x32[8] | decoder5x32[12] | decoder5x32[16] | decoder5x32[20] | decoder5x32[24] | decoder5x32[28];
    mult5=decoder5x32[5] | decoder5x32[10] | decoder5x32[15] | decoder5x32[20] | decoder5x32[25] | decoder5x32[30] ; 
    mult6=decoder5x32[6] | decoder5x32[12] | decoder5x32[18] | decoder5x32[24] | decoder5x32[30] ; 
    mult7=decoder5x32[7] | decoder5x32[14] | decoder5x32[21] | decoder5x32[28] ;
    mult8=decoder5x32[8] | decoder5x32[16] | decoder5x32[24] ;
    mult9=decoder5x32[9] | decoder5x32[18] | decoder5x32[27] ;

    result2 = mult2 & decoder3x8[2];
    result3 = mult3 & decoder3x8[3];
    result4 = mult4 & decoder3x8[4];
    result5 = mult5 & decoder3x8[5];
    result6 = mult6 & decoder3x8[6];
    result7 = mult7 & decoder3x8[7];
    result8 = mult8 & decoder3x8[8];
    result9 = mult9 & decoder3x8[9];   
    
    out= result2 | result3 | result4 | result5 | result6 | result7 | result8 | result9 ;
    end
endmodule