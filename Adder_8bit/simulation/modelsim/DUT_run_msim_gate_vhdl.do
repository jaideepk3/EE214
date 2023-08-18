transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {DUT.vho}

vcom -93 -work work {D:/EE214/Adder_8bit/Testbench.vhdl}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /DUT=DUT_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all