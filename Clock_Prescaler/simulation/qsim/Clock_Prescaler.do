onerror {exit -code 1}
vlib work
vcom -work work Clock_Prescaler.vho
vcom -work work Waveform.vwf.vht
vsim -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Clock_Prescaler_vhd_vec_tst
vcd file -direction Clock_Prescaler.msim.vcd
vcd add -internal Clock_Prescaler_vhd_vec_tst/*
vcd add -internal Clock_Prescaler_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

