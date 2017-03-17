transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/sc_instmen.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/sc_datamem.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/lpm_rom_irom.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/lpm_ram_dq_dram.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/pipelined_computer.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/pipepc.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/pipeif.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/pipeir.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/pipeid.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/pipereg.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/pipeexe.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/pipeemreg.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/pipemem.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/pipewreg.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/mux2x32.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/pipe_cu.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/mux4x32.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/mux2x5.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/regfile.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/sevenseg.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/lcd_map.v}
vlog -vlog01compat -work work +incdir+C:/Users/AlexChang/Desktop/project3/source {C:/Users/AlexChang/Desktop/project3/source/switch_map.v}

