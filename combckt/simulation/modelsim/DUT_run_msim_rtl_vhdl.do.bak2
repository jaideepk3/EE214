transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/EE214/combckt/TopLevel.vhdl}
vlib v_jtag
vmap v_jtag v_jtag
vcom -93 -work v_jtag {D:/EE214/combckt/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {D:/EE214/combckt/GATES.vhdl}
vcom -93 -work work {D:/EE214/combckt/DUT.vhdl}
vcom -93 -work work {D:/EE214/combckt/combckt.vhdl}

vcom -93 -work work {D:/EE214/combckt/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -L v_jtag -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
