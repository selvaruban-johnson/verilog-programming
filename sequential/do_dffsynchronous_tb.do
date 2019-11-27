vlog dff_bm.v
vlog dffsynchronous_tb.v
vsim -novopt dffsynchronous_tb
add wave *
run -all
