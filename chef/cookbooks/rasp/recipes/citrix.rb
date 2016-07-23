##
# Citrix client

icaclient_deb = '/root/icaclient_armhf.deb'

package 'ruby-nokogiri'
# get .deb from Citrix
ruby_block 'get icaclient' do
  block do
    require 'nokogiri'
    require 'open-uri'
    require 'uri'
    require 'pathname'
    
    url = 'https://www.citrix.com' \
          + '/downloads/citrix-receiver/linux' \
          + '/receiver-for-linux-latest.html'

    icaclient_url = ''
    Nokogiri::HTML(open(url)).css('.ctx-dl-external').each do |elt|
      rel = elt['rel']
      fname = String(Pathname(URI(rel).path).basename)
      if fname.start_with?('icaclient_') and fname.end_with?('_armhf.deb')
        icaclient_url = 'https:' + rel
        break
      end
    end
    # download file
    File.open(icaclient_deb, "wb") do |local|
      open(icaclient_url, "rb") do |remote|
        local.write(remote.read)
      end
    end
  end
  not_if { File.exists?(icaclient_deb) }
end

# install icaclient from local .deb and fix missing dependencies
execute "dpkg -i #{icaclient_deb}" do
  returns [0, 1] # allow missing dependencies
  notifies :run, 'execute[apt-get --fix-broken]', :immediately
  not_if { `dpkg-query --showformat '${Status}' --show icaclient` \
           == 'install ok installed' }
end
execute 'apt-get --fix-broken' do
  command 'apt-get --quiet --yes --fix-broken install'
  environment 'DEBIAN_FRONTEND' => 'noninteractive'
  action :nothing
end

# ssl certificate
cert = 'VeriSign_Class_3_Public_Primary_Certification_Authority_-_G5.pem'
link "/opt/Citrix/ICAClient/keystore/cacerts/#{cert}" do
  to "/etc/ssl/certs/#{cert}"
end

# command-line wfica
link '/usr/local/bin/wfica' do
  to '/opt/Citrix/ICAClient/wfica.sh'
end
