include_recipe '::ibmc_user'
include_recipe '::ibmc_bios'
include_recipe '::ibmc_boot'
include_recipe '::ibmc_indicator_led'
include_recipe '::ibmc_license'
# include_recipe '::ibmc_ethernet_dns'
# include_recipe '::ibmc_ethernet_ipv4'
# include_recipe '::ibmc_ethernet_ipv6'
# include_recipe '::ibmc_ethernet_ipversion'
# include_recipe '::ibmc_ethernet_vlan'
include_recipe '::ibmc_ethernet'
include_recipe '::ibmc_ntp'
include_recipe '::ibmc_cpu'
include_recipe '::ibmc_drive'
include_recipe '::ibmc_os_eth'
include_recipe '::ibmc_memory'
include_recipe '::ibmc_system'
include_recipe '::ibmc_raid'
include_recipe '::ibmc_sys_power'
include_recipe '::ibmc_service'
include_recipe '::ibmc_smtp'
include_recipe '::ibmc_snmp'
# include_recipe '::ibmc_restart'
include_recipe '::ibmc_health_cpu'
include_recipe '::ibmc_health_drive'
include_recipe '::ibmc_health_fan'
include_recipe '::ibmc_health_memory'
include_recipe '::ibmc_health_psu'
include_recipe '::ibmc_health_raid'
# include_recipe '::ibmc_firmware_inband'
# include_recipe '::ibmc_firmware_outband'
# include_recipe '::ibmc_sp_firmware'
include_recipe '::ibmc_vmm'
# include_recipe '::ibmc_os_deploy'
