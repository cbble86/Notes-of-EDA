`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/28 22:23:57
// Design Name: 
// Module Name: PL_3_8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PL_3_8(
    input SW0,
    input SW1,
    input SW2,
    output reg [7:0]LED
    );
        
        always@(SW2,SW1,SW0)begin
            case({SW2,SW1,SW0})
                3'b000:LED = 8'b0000_0001;
                3'b001:LED = 8'b0000_0010;
                3'b010:LED = 8'b0000_0100;
                3'b011:LED = 8'b0000_1000;
                3'b100:LED = 8'b0001_0000;
                3'b101:LED = 8'b0010_0000;
                3'b110:LED = 8'b0100_0000;
                3'b111:LED = 8'b1000_0000;
            endcase    
        end
 
endmodule
