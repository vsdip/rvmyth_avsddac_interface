# User config
set ::env(DESIGN_NAME) rv_dac_design

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/rvmyth_avsddac_interface.v]

set ::env(VERILOG_FILES_BLACKBOX) [glob $::env(DESIGN_DIR)/src/avsddac.v]
# for macro lef
set ::env(EXTRA_LEFS) [glob $::env(OPENLANE_ROOT)/designs/rv_dac_design/src/lef/avsddac.lef] 
# Fill this
set ::env(CLOCK_PERIOD) "10"
set ::env(CLOCK_PORT) "clk"

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

