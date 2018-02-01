`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/02/01 10:02:41
// Design Name: 
// Module Name: PL_3_8_top
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

module PL_3_8_top;
    reg SW0_top, SW1_top, SW2_top;
    wire [7:0] LED_top;
    
    initial begin
            SW0_top =1;
            SW1_top =0;
            SW2_top =1;
        #100        
            SW0_top =1;
            SW1_top =1;
            SW2_top =1;
        #100     
            SW0_top =0;
            SW1_top =0;
            SW2_top =0;
        #100     
            SW0_top =1;
            SW1_top =0;
            SW2_top =0;
        #100
        $stop;
    end

PL_3_8 decoder1(
    .SW0(SW0_top),
    .SW1(SW1_top),
    .SW2(SW2_top),
    .LED(LED_top)
    );

endmodule
