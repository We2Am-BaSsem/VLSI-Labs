vsim -gui work.multiplier

add wave -position insertpoint  \
sim:/multiplier/A \
sim:/multiplier/B \
sim:/multiplier/Asign \
sim:/multiplier/Bsign \
sim:/multiplier/Product \
sim:/multiplier/en

force -freeze sim:/multiplier/A 16#0002 0
force -freeze sim:/multiplier/B 16#0003 0
force -freeze sim:/multiplier/Asign 0 0
force -freeze sim:/multiplier/Bsign 0 0
run

force -freeze sim:/multiplier/A 16#FFFD 0
force -freeze sim:/multiplier/B 16#0003 0
force -freeze sim:/multiplier/Asign 1 0
force -freeze sim:/multiplier/Bsign 0 0
run

force -freeze sim:/multiplier/A 16#FFFD 0
force -freeze sim:/multiplier/B 16#FFFD 0
force -freeze sim:/multiplier/Asign 1 0
force -freeze sim:/multiplier/Bsign 1 0
run