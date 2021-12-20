vsim -gui work.preprocessing
add wave -position insertpoint  \
sim:/preprocessing/A \
sim:/preprocessing/B \
sim:/preprocessing/Adash \
sim:/preprocessing/Bdash \
sim:/preprocessing/Asign \
sim:/preprocessing/Bsign

force -freeze sim:/preprocessing/A 16#0002 0
force -freeze sim:/preprocessing/B 16#0003 0
run

force -freeze sim:/preprocessing/A 16#8000 0
force -freeze sim:/preprocessing/B 16#0003 0
run

force -freeze sim:/preprocessing/A 16#FFFD 0
force -freeze sim:/preprocessing/B 16#FFFD 0
run