onerror {exit -code 1}
vlib work
vcom -work work WS2812_RGB_LED_256.vho
vcom -work work Waveform1.vwf.vht
vsim -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.WS2812_RGB_LED_256_vhd_vec_tst
vcd file -direction WS2812_RGB_LED_256.msim.vcd
vcd add -internal WS2812_RGB_LED_256_vhd_vec_tst/*
vcd add -internal WS2812_RGB_LED_256_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f













