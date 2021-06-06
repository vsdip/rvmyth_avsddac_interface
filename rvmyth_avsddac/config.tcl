# User config
set ::env(DESIGN_NAME) rvmyth_avsddac


# Change if needed
set ::env(VERILOG_FILES) [glob $::env(OPENLANE_ROOT)/designs/rvmyth_avsddac/src/verilog/rvmyth_avsddac.v]
#set ::env(VERILOG_FILES_BLACKBOX) [glob $::env(OPENLANE_ROOT)/designs/rvmyth_avsddac/src/verilog/avsddac.v]
set ::env(EXTRA_LEFS) [glob $::env(OPENLANE_ROOT)/designs/rvmyth_avsddac/src/lef/avsddac.lef]
#set ::env(EXTRA_LEFS) [glob $::env(OPENLANE_ROOT)/designs/$::env(rvmyth_avsddac)/src/lef/avsddac.lef]
#set ::env(MERGED_LEF) [glob $::env(OPENLANE_ROOT)/designs/rvmyth_avsddac/runs/02-06_14-40/tmp/merged.lef]
#set ::env(MERGED_LEF_UNPADDED) [glob $::env(OPENLANE_ROOT)/designs/rvmyth_avsddac/runs/02-06_14-40/tmp/merged_unpadded.lef]
#set ::env(TECH_LEF) "/home/mansi/Documents/vsdflow/work/tools/openlane_working_dir/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd.tlef"
set ::env(LIB_SYNTH) [glob $::env(OPENLANE_ROOT)/designs/rvmyth_avsddac/src/verilog/sky130_fd_sc_hd__tt_025C_1v80.lib]
set ::env(SYNTH_READ_BLACKBOX_LIB) "1"
set ::env(EXTRA_LIBS) [glob $::env(OPENLANE_ROOT)/designs/rvmyth_avsddac/src/verilog/avsddac.lib]



# Fill this
set ::env(CLOCK_PERIOD) "10"
set ::env(CLOCK_PORT) "clk"
# low for small designs
set ::env(FP_CORE_UTIL) 20
# optimized value
set ::env(PL_TARGET_DENSITY) 0.4
#for small designs
set ::env(FP_PDN_VOFFSET) 4
set ::env(FP_PDN_VPITCH) 15
set ::env(FP_PDN_HOFFSET) 4
set ::env(FP_PDN_HPITCH) 15

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
        source $filename
}

