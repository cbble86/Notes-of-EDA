`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/01/31 11:49:29
// Design Name: 32bit_add
// Module Name: add_SC
// Project Name: 32bit_add
// Target Devices: zedboard
// Tool Versions: 
// Description: a simple experiment
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module add_SC(carryin, carryout, num1, num2, S);
    
    parameter n = 32;                    //32bit
    input [n-1:0] num1, num2;            //32bit input number
    input carryin;                       //外部进位输入
    output reg [n-1:0] S;                //运算结果
    reg [n:0] carry;                     //进位寄存器
    output reg carryout;                 //最高位进位
    integer i;                           //循环变量
    
    always @(num1, num2, carryin)        //always块内无assign
    begin
        carry[0] = carryin;              //无上游加法器接入
        for(i = 0;i < n;i = i+1)         //循环
            begin
                S[i] = num1[i] ^ num2[i] ^ carry[i];        //当前位的值
                carry[i+1] = (num1[i] & num2[i]) | (num1[i] & carry[i]) | (num2[i] & carry[i]);     //进位寄存器值
            end
         carryout = carry[n];          //最高位进位输出
     end
    
    
endmodule

