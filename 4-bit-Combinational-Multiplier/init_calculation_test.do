vsim -gui work.init_calculations

add wave -position insertpoint  \
sim:/init_calculations/in1 \
sim:/init_calculations/in2 \
sim:/init_calculations/out


force -freeze sim:/init_calculations/in1 1111 0
force -freeze sim:/init_calculations/in2 1111 0
run

force -freeze sim:/init_calculations/in1 1011 0
force -freeze sim:/init_calculations/in2 0110 0
run

force -freeze sim:/init_calculations/in1 1010 0
force -freeze sim:/init_calculations/in2 0010 0
run


force -freeze sim:/init_calculations/in1 1101 0
force -freeze sim:/init_calculations/in2 1010 0
run