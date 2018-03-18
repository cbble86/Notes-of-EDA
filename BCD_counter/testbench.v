`timescale 1ns/1ns		//时间尺度
`define sys_clk 10		//10ns

//定义仿真模块
module bcd_counter_tb;	

		reg cin_top;						//低位进位输入
		reg clk_top;						//系统时钟
		wire cout_top;						//高位进位输出
		wire [11:0] q_top;				//3位bcd(12bit)
		
		bcd_counter counter_test(
			.cin_t(cin_top), 
			.clk_100(clk_top), 
			.cout_t(cout_top), 
			.q_t(q_top)
			);	
		
		//定义时钟,5ns翻转一次
		initial clk_top = 1;
		always #(`sys_clk/2) clk_top = ~clk_top;
		
		//产生进位激励信号,5个低周期一个高周期
		initial begin
			repeat(100)begin
				cin_top = 0;
				#(`sys_clk*5) cin_top = 1;
				#(`sys_clk) cin_top = 0;
			end
			
		#(`sys_clk*500);					//总延时
		$stop;								//终止仿真
		end		
		
endmodule
