create_clock -period "50.0 MHz" [get_ports clk]

derive_clock_uncertainty

set_false_path -from [get_ports rst_n] -to [all_clocks]
set_false_path -from [get_ports {key[*]}] -to [all_clocks]
set_false_path -from * -to [get_ports {led[*]}]
