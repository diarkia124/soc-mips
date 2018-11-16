# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.cache/wt [current_project]
set_property parent.project_path C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_mem C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/memfile_s.dat
read_verilog -library xil_defaultlib {
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/error.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/reg.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/mux.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/mult.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/compare.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/cnt.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/buffer.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/DP.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/CU.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/gpioreg.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/gpioaddressdecoder.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/rslatch.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/MIPS_Initial.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/faregpulse.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/fareggo.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/fareg.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/faaddressdecoder.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/andmodule.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/Testing.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/GPIO.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/addressdecoder.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/factorialtop.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/utility.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/system.v
  C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/fpgatop.v
}
read_xdc C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/MIPS_top.xdc
set_property used_in_implementation false [get_files C:/Users/Kurisu/Documents/VivadoProjects/IOandInterface/IOandInterface.srcs/sources_1/new/MIPS_top.xdc]

synth_design -top fpgatop -part xc7a100tcsg324-1
write_checkpoint -noxdef fpgatop.dcp
catch { report_utilization -file fpgatop_utilization_synth.rpt -pb fpgatop_utilization_synth.pb }