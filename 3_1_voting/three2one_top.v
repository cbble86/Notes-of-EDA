`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/02/01 10:22:39
// Design Name: 
// Module Name: three2one_top
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


module three2one_top;
    reg SW0_top, SW1_top, SW2_top;
    wire LED_top;
    
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
    
    three2one_SC voting1(
                .a(SW0_top), 
                .b(SW1_top), 
                .c(SW2_top), 
                .result(LED_top)
                );


endmodule
