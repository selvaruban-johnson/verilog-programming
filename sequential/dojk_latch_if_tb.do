vlog  jk_latch_if.v
vlog jk_latch_if_tb.v
vsim -novopt jk_latch_if_tb
add wave *
run -all
