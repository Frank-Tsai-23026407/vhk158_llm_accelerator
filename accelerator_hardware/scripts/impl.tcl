open_project vhk158_llm_accelerator.xpr

# Run synthesis first if it hasn't completed
set synth_progress [get_property PROGRESS [get_runs synth_1]]
if {$synth_progress ne "100%"} {
    puts "INFO: Synthesis not complete — running synth_1 first."
    launch_runs synth_1 -jobs 4
    wait_on_run synth_1
    if {[get_property PROGRESS [get_runs synth_1]] ne "100%"} {
        puts "ERROR: Synthesis failed."
        exit 1
    }
}

launch_runs impl_1 -jobs 4
wait_on_run impl_1

set status [get_property STATUS [get_runs impl_1]]
set progress [get_property PROGRESS [get_runs impl_1]]

puts "Implementation status:   $status"
puts "Implementation progress: $progress"

if {$progress ne "100%"} {
    puts "ERROR: Implementation did not complete successfully."
    exit 1
}

exit 0
