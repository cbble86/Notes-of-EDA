#设置引脚T22连接信号result，驱动电压3.3V
set_property PACKAGE_PIN T22 [get_ports {result}]           
set_property IOSTANDARD LVCMOS33 [get_ports {result}]


#分别连接SW0-2的三个引脚，驱动电压3.3V
set_property IOSTANDARD LVCMOS33 [get_ports {a}]            
set_property PACKAGE_PIN F22 [get_ports {a}]

set_property IOSTANDARD LVCMOS33 [get_ports {b}]
set_property PACKAGE_PIN G22 [get_ports {b}]

set_property IOSTANDARD LVCMOS33 [get_ports {c}]
set_property PACKAGE_PIN H22 [get_ports {c}]
