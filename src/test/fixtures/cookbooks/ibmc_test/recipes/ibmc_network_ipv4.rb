ibmc_ethernet_ipv4 'set ipv4' do
  address '192.168.100.10'
  origin 'Static'
  gateway '192.168.0.1'
  mask '255.255.255.0'
  action :set
end
