transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/EE214/4-bit Adder-Subtractor/DUT.vhdl}
vcom -93 -work work {D:/EE214/4-bit Adder-Subtractor/GATES.vhdl}
vcom -93 -work work {D:/EE214/4-bit Adder-Subtractor/Adder_Subtractor.vhdl}

vcom -93 -work work {D:/EE214/4-bit Adder-Subtractor/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
