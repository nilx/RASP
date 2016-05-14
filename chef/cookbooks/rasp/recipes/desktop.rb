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

# parse Citrix web
icaclient_url = 'https://foobar/icaclient.deb'
icaclient_deb = 'icaclient.deb'

package 'ruby-nokogiri'
ruby_block 'find icaclient' do
  block do
    require 'nokogiri'
    require 'open-uri'
    require 'uri'
    require 'pathname'
    
    url = 'https://www.citrix.com' \
          + '/downloads/citrix-receiver/linux' \
          + '/receiver-for-linux-latest.html'
    
    Nokogiri::HTML(open(url)).css('.ctx-dl-external').each do |elt|
      rel = elt['rel']
      fname = String(Pathname(URI(rel).path).basename)
      if fname.start_with?('icaclient_') and fname.end_with?('_armhf.deb')
        icaclient_deb = '/var/cache/apt/archives/' + fname
        icaclient_url = 'https:' + rel
        break
      end
    end
  # update remote_file attributes
  remote_file_r = run_context.resource_collection.find(:remote_file => 'icaclient.deb')
  remote_file_r.path icaclient_deb
  remote_file_r.source icaclient_url
  # update execute attributes
  execute_r = run_context.resource_collection.find(:execute => 'install icaclient')
  execute_r.command "dpkg -i #{icaclient_deb} || apt-get --quiet --yes --fix-broken install"
  end
end

# get .deb from Citrix
remote_file 'icaclient.deb' do
  path   icaclient_deb
  source icaclient_url
  action :create_if_missing
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
