vsim -gui work.postprocessing
add wave -position insertpoint  \
sim:/postprocessing/Cdash \
sim:/postprocessing/en \
sim:/postprocessing/C

force -freeze sim:/postprocessing/Cdash 16#00000006 0
force -freeze sim:/postprocessing/en 0 0
run

force -freeze sim:/postprocessing/Cdash 16#00017FF7 0
force -freeze sim:/postprocessing/en 1 0
run

force -freeze sim:/postprocessing/Cdash 16#3ffd0009 0
force -freeze sim:/postprocessing/en 0 0
run