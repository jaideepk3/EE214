transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/EE214/hw2/decoder38/DUT.vhdl}
vcom -93 -work work {D:/EE214/hw2/decoder38/decoder38.vhdl}

vcom -93 -work work {D:/EE214/hw2/decoder38/testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
