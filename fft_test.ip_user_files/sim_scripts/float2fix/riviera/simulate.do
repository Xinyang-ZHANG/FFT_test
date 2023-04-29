onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+float2fix -L xil_defaultlib -L xpm -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_15 -L floating_point_v7_1_8 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.float2fix xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {float2fix.udo}

run -all

endsim

quit -force
