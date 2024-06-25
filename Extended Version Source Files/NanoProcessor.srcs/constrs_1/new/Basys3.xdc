## Clock signal
set_property PACKAGE_PIN W5 [get_ports {Clk}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Clk}]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {Clk}]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {Dis_LED[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Dis_LED[0]}]
set_property PACKAGE_PIN E19 [get_ports {Dis_LED[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Dis_LED[1]}]
set_property PACKAGE_PIN U19 [get_ports {Dis_LED[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Dis_LED[2]}]
set_property PACKAGE_PIN V19 [get_ports {Dis_LED[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Dis_LED[3]}]

set_property PACKAGE_PIN U14 [get_ports {Comparator_out[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Comparator_out[0]}]
set_property PACKAGE_PIN V14 [get_ports {Comparator_out[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Comparator_out[1]}]
set_property PACKAGE_PIN V13 [get_ports {Comparator_out[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Comparator_out[2]}]

set_property PACKAGE_PIN P3 [get_ports {Flags[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Flags[3]}]
set_property PACKAGE_PIN N3 [get_ports {Flags[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Flags[1]}]
set_property PACKAGE_PIN P1 [get_ports {Flags[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Flags[2]}]
set_property PACKAGE_PIN L1 [get_ports {Flags[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Flags[0]}]


##7 segment display
set_property PACKAGE_PIN W7 [get_ports {Dis_7Seg[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Dis_7Seg[0]}]
set_property PACKAGE_PIN W6 [get_ports {Dis_7Seg[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Dis_7Seg[1]}]
set_property PACKAGE_PIN U8 [get_ports {Dis_7Seg[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Dis_7Seg[2]}]
set_property PACKAGE_PIN V8 [get_ports {Dis_7Seg[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Dis_7Seg[3]}]
set_property PACKAGE_PIN U5 [get_ports {Dis_7Seg[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Dis_7Seg[4]}]
set_property PACKAGE_PIN V5 [get_ports {Dis_7Seg[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Dis_7Seg[5]}]
set_property PACKAGE_PIN U7 [get_ports {Dis_7Seg[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Dis_7Seg[6]}]

set_property PACKAGE_PIN U2 [get_ports {AnodeSelector[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {AnodeSelector[0]}]
set_property PACKAGE_PIN U4 [get_ports {AnodeSelector[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {AnodeSelector[1]}]
set_property PACKAGE_PIN V4 [get_ports {AnodeSelector[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {AnodeSelector[2]}]
set_property PACKAGE_PIN W4 [get_ports {AnodeSelector[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {AnodeSelector[3]}]


##Buttons
set_property PACKAGE_PIN U18 [get_ports Reset]
	set_property IOSTANDARD LVCMOS33 [get_ports Reset]


set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]