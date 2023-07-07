set_global_assignment -entity "ULA_UFM" -library "lib_ULA_UFM" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "ULA_UFM" -library "lib_ULA_UFM" -name IP_TOOL_VERSION "22.1"
set_global_assignment -entity "ULA_UFM" -library "lib_ULA_UFM" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_ULA_UFM" -name SPD_FILE [file join $::quartus(sip_path) "../ULA_UFM.spd"]
set_global_assignment -library "lib_ULA_UFM" -name MISC_FILE [file join $::quartus(sip_path) "../../ULA_UFM.qsys"]

set_global_assignment -library "lib_ULA_UFM" -name MISC_FILE [file join $::quartus(sip_path) "ULA_UFM.vhd"]
set_global_assignment -library "lib_ULA_UFM" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_onchip_flash_util.v"]
set_global_assignment -library "lib_ULA_UFM" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_onchip_flash.v"]
set_global_assignment -library "lib_ULA_UFM" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_onchip_flash_avmm_data_controller.v"]
