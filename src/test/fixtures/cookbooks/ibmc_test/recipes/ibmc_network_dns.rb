ibmc_ethernet_dns 'set dns' do
  address_origin 'Static'
  hostname 'server5'
  domain 'server5.test.com'
  preferred_server '192.168.100.10'
  alternate_server 'fe08::2019'
  action :set
end
