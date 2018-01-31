`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/01/26 13:37:03
// Design Name: 三人表决器
// Module Name: three2one_SC
// Project Name: 
// Target Devices: 7020，zedboard
// Tool Versions: vi2015.4
// Description: 三人表决器的门级描述,RTL描述，移植自锆石科技例程
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//三人表决器
module three2one_SC(a, b, c, result);
    input a, b, c;          //三个开关输入
    output result;          //输出，接在led0上
    /*
    wire ab, bc, ac;        //线型变量，用于接通与门或门的电路
    
    and U1(ab,a,b);         //与门
    and U2(bc,b,c);         //与门
    and U3(ac,a,c);         //与门
    
    or U4(result,ab,bc,ac); //将三个与门的结果进行或运算，输出结果result
    */
    assign result = (a&&b)||(a&&c)||(b&&c); //RTL描述
        
endmodule
