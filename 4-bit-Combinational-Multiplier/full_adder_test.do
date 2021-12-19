vsim -gui work.full_adder

add wave -position insertpoint  \
sim:/full_adder/a \
sim:/full_adder/b \
sim:/full_adder/cin \
sim:/full_adder/s \
sim:/full_adder/cout


force -freeze sim:/full_adder/a 0 0
force -freeze sim:/full_adder/b 0 0
force -freeze sim:/full_adder/cin 0 0
run

force -freeze sim:/full_adder/a 0 0
force -freeze sim:/full_adder/b 0 0
force -freeze sim:/full_adder/cin 1 0
run

force -freeze sim:/full_adder/a 1 0
force -freeze sim:/full_adder/b 0 0
force -freeze sim:/full_adder/cin 0 0
run

force -freeze sim:/full_adder/a 1 0
force -freeze sim:/full_adder/b 0 0
force -freeze sim:/full_adder/cin 1 0
run

force -freeze sim:/full_adder/a 1 0
force -freeze sim:/full_adder/b 1 0
force -freeze sim:/full_adder/cin 0 0
run

force -freeze sim:/full_adder/a 1 0
force -freeze sim:/full_adder/b 1 0
force -freeze sim:/full_adder/cin 1 0
run

force -freeze sim:/full_adder/a 0 0
force -freeze sim:/full_adder/b 1 0
force -freeze sim:/full_adder/cin 0 0
run

force -freeze sim:/full_adder/a 0 0
force -freeze sim:/full_adder/b 1 0
force -freeze sim:/full_adder/cin 1 0
run