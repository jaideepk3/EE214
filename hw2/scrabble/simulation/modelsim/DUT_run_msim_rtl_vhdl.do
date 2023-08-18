transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/EE214/hw2/scrabble/scrabble.vhdl}
vcom -93 -work work {D:/EE214/hw2/scrabble/DUT.vhdl}

vcom -93 -work work {D:/EE214/hw2/scrabble/testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
