onerror {exit -code 1}
vlib work
vcom -work work TEST_RAM.vho
vcom -work work Waveform1.vwf.vht
vsim -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.TEST_RAM_vhd_vec_tst
vcd file -direction TEST_RAM.msim.vcd
vcd add -internal TEST_RAM_vhd_vec_tst/*
vcd add -internal TEST_RAM_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f


