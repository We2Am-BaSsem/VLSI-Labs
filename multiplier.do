vsim -gui work.multiplier

add wave -position insertpoint  \
sim:/multiplier/A \
sim:/multiplier/B \
sim:/multiplier/Sum

force -freeze sim:/multiplier/A 1101 0
force -freeze sim:/multiplier/B 0111 0
run
force -freeze sim:/multiplier/A 1101 0
force -freeze sim:/multiplier/B 1111 0
run
force -freeze sim:/multiplier/A 1111 0
force -freeze sim:/multiplier/B 1111 0
run
force -freeze sim:/multiplier/A 0000 0
force -freeze sim:/multiplier/B 1111 0
run
force -freeze sim:/multiplier/B 0001 0
force -freeze sim:/multiplier/A 1010 0
run