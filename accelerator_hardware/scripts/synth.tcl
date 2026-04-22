open_project vhk158_llm_accelerator.xpr

launch_runs synth_1 -jobs [expr {[llength [processor info cpus]] > 4 ? 4 : [llength [processor info cpus]]}]
wait_on_run synth_1

set status [get_property STATUS [get_runs synth_1]]
set progress [get_property PROGRESS [get_runs synth_1]]

puts "Synthesis status:   $status"
puts "Synthesis progress: $progress"

if {$progress ne "100%"} {
    puts "ERROR: Synthesis did not complete successfully."
    exit 1
}

exit 0
