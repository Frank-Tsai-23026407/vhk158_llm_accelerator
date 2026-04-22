open_project vhk158_llm_accelerator.xpr

# Run synthesis if needed
set synth_progress [get_property PROGRESS [get_runs synth_1]]
if {$synth_progress ne "100%"} {
    puts "INFO: Running synthesis."
    launch_runs synth_1 -jobs 4
    wait_on_run synth_1
    if {[get_property PROGRESS [get_runs synth_1]] ne "100%"} {
        puts "ERROR: Synthesis failed."
        exit 1
    }
}

# Run implementation through write_device_image step
set impl_progress [get_property PROGRESS [get_runs impl_1]]
if {$impl_progress ne "100%"} {
    puts "INFO: Running implementation."
    launch_runs impl_1 -to_step write_device_image -jobs 4
} else {
    # Implementation finished but PDI step may not have run
    launch_runs impl_1 -next_step -jobs 4
}
wait_on_run impl_1

set status [get_property STATUS [get_runs impl_1]]
set progress [get_property PROGRESS [get_runs impl_1]]

puts "Implementation status:   $status"
puts "Implementation progress: $progress"

if {$progress ne "100%"} {
    puts "ERROR: Implementation/PDI generation did not complete successfully."
    exit 1
}

# Report PDI output location
set pdi_files [glob -nocomplain vhk158_llm_accelerator.runs/impl_1/*.pdi]
if {[llength $pdi_files] > 0} {
    puts "PDI generated: [lindex $pdi_files 0]"
} else {
    puts "WARNING: No .pdi file found in impl_1 run directory."
}

exit 0
