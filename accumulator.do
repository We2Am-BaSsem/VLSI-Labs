vsim -gui work.accumulator

add wave -position end  sim:/accumulator/in1
add wave -position end  sim:/accumulator/in2
add wave -position end  sim:/accumulator/out
add wave -position end  sim:/accumulator/init
add wave -position end  sim:/accumulator/w1
add wave -position end  sim:/accumulator/w2

force -freeze sim:/accumulator/in1 1101 0
force -freeze sim:/accumulator/in2 0111 0
run
force -freeze sim:/accumulator/in1 1101 0
force -freeze sim:/accumulator/in2 1111 0
run
force -freeze sim:/accumulator/in1 1111 0
force -freeze sim:/accumulator/in2 1111 0
run
force -freeze sim:/accumulator/in1 0000 0
force -freeze sim:/accumulator/in2 1111 0
run
force -freeze sim:/accumulator/in2 0001 0
force -freeze sim:/accumulator/in1 1010 0
run