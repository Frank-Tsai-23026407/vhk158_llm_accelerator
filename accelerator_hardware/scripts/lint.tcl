open_project vhk158_llm_accelerator.xpr

set messages [check_syntax -fileset [get_filesets sources_1] -return_string]

set errors   [regexp -all {\[(?:Synth|HDL)-\d+\] ERROR}   $messages]
set warnings [regexp -all {\[(?:Synth|HDL)-\d+\] WARNING} $messages]

puts $messages
puts "----"
puts "Errors:   $errors"
puts "Warnings: $warnings"

if {$errors > 0} {
    puts "ERROR: Syntax check found $errors error(s)."
    exit 1
}

exit 0
