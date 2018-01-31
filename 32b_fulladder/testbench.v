`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/01/31 15:45:08
// Design Name: 
// Module Name: add_32bit_top
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


module add_32bit_top;
    reg [31:0] top_num1, top_num2;
    reg top_carryin;
    wire top_carryout;
    wire [31:0] top_S;
    
    initial begin
        top_num1 = 580;
        top_num2 = 540;
        top_carryin = 0;
        
#100    top_num1 = 1024;
        top_num2 = -512;
        
#100    top_num1 = 8848;
        top_num2 = -8848;
        
#100    top_num1 = 262;
        top_num2 = 262;
        
#100    top_num1 = 100;
        top_num2 = 200;
$stop;
end

    add_SC add1(
    .carryin(top_carryin), 
    .carryout(top_carryout), 
    .num1(top_num1),
    .num2(top_num2), 
    .S(top_S)
    );
        

endmodule
