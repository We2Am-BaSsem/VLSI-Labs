vsim -gui work.IntegratedSystem

add wave -position insertpoint  \
sim:/IntegratedSystem/A \
sim:/IntegratedSystem/B \
sim:/IntegratedSystem/clk \
sim:/IntegratedSystem/C

force -freeze sim:/IntegratedSystem/clk 0 0
force -freeze sim:/IntegratedSystem/A 16#0002 0
force -freeze sim:/IntegratedSystem/B 16#0003 0
run
force -freeze sim:/IntegratedSystem/A 16#0002 0
force -freeze sim:/IntegratedSystem/B 16#0003 0
force -freeze sim:/IntegratedSystem/clk 1 0
run

force -freeze sim:/IntegratedSystem/clk 0 0
force -freeze sim:/IntegratedSystem/A 16#FFFD 0
force -freeze sim:/IntegratedSystem/B 16#0003 0
run
force -freeze sim:/IntegratedSystem/A 16#FFFD 0
force -freeze sim:/IntegratedSystem/B 16#0003 0
force -freeze sim:/IntegratedSystem/clk 1 0
run

force -freeze sim:/IntegratedSystem/clk 0 0
force -freeze sim:/IntegratedSystem/A 16#FFFD 0
force -freeze sim:/IntegratedSystem/B 16#FFFD 0
run
force -freeze sim:/IntegratedSystem/A 16#FFFD 0
force -freeze sim:/IntegratedSystem/B 16#FFFD 0
force -freeze sim:/IntegratedSystem/clk 1 0
run

force -freeze sim:/IntegratedSystem/clk 0 0
run
force -freeze sim:/IntegratedSystem/clk 1 0
run
force -freeze sim:/IntegratedSystem/clk 0 0
run
force -freeze sim:/IntegratedSystem/clk 1 0
run
force -freeze sim:/IntegratedSystem/clk 0 0
run
force -freeze sim:/IntegratedSystem/clk 1 0
run
force -freeze sim:/IntegratedSystem/clk 0 0
run
force -freeze sim:/IntegratedSystem/clk 1 0
run