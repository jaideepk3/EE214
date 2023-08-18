transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Acer/Downloads/EE 214/Projects/midsem/code/Gates.vhdl}
vcom -93 -work work {D:/Acer/Downloads/EE 214/Projects/midsem/code/DUT.vhdl}
vcom -93 -work work {D:/Acer/Downloads/EE 214/Projects/midsem/code/MUX.vhdl}
vcom -93 -work work {D:/Acer/Downloads/EE 214/Projects/midsem/code/Full_Adder.vhdl}
vcom -93 -work work {D:/Acer/Downloads/EE 214/Projects/midsem/code/additional.vhdl}
vcom -93 -work work {D:/Acer/Downloads/EE 214/Projects/midsem/code/SQRR5.vhdl}
vcom -93 -work work {D:/Acer/Downloads/EE 214/Projects/midsem/code/INVB.vhdl}
vcom -93 -work work {D:/Acer/Downloads/EE 214/Projects/midsem/code/XNOR_AB.vhdl}
vcom -93 -work work {D:/Acer/Downloads/EE 214/Projects/midsem/code/COUNT1.vhdl}
vcom -93 -work work {D:/Acer/Downloads/EE 214/Projects/midsem/code/Top.vhdl}

vcom -93 -work work {D:/Acer/Downloads/EE 214/Projects/midsem/code/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
