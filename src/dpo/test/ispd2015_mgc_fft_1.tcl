# gcd (low utilization)
source "helpers.tcl"
read_lef /home/jsliang/DREAMPlace/install/benchmarks/ispd2015/mgc_fft_1/tech.lef
read_lef /home/jsliang/DREAMPlace/install/benchmarks/ispd2015/mgc_fft_1/cells.lef
read_def /home/jsliang/DREAMPlace/install/benchmarks/ispd2015/mgc_fft_1/floorplan.def
read_verilog /home/jsliang/DREAMPlace/install/benchmarks/ispd2015/mgc_fft_1/design.v
improve_placement
check_placement

set def_file [make_result_file floorplan.def]
write_def $def_file
