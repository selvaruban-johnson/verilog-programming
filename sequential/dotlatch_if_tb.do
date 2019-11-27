vlog  tlatch_if.v
vlog t_latch_if_tb.v
vsim -novopt t_latch_if_tb
add wave *
run -all