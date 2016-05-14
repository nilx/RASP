# install desktop

##
# LXDE

#TODO: fix timeout
execute 'install lxde and lightdm' do
  command 'apt-get install -q -y lxde lightdm'
  environment 'DEBIAN_FRONTEND' => 'noninteractive'
  not_if { File.file?('/usr/bin/lxsession') \
           and File.file?('/usr/sbin/lightdm') }
end
package 'lxde'
package 'lightdm'

# don't need xscreensaver
package 'xscreensaver' do
  action :remove
end

# auto-login
cookbook_file '/etc/lightdm/lightdm.conf' do
  source 'etc/lightdm/lightdm.conf'
end

##
# HTML5 browser
package 'iceweasel'

##
# Citrix client

icaclient_deb = '/root/icaclient_arnhf.deb'

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

# install local .deb with dpkg and complete with dependencies
execute 'install icaclient' do
  command "dpkg -i #{icaclient_deb} || apt-get --quiet --yes --fix-broken install"
  environment 'DEBIAN_FRONTEND' => 'noninteractive'
end

# ssl certificate
cert = 'VeriSign_Class_3_Public_Primary_Certification_Authority_-_G5.pem'
link 'icacert' do
  target_file "/opt/Citrix/ICAClient/keystore/cacerts/#{cert}"
  to "/etc/ssl/certs/#{cert}"
end
