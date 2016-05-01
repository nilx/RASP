# install desktop

#TODO: fix timeout
execute 'install lxde' do
  command 'apt-get install -q -y lxde'
  environment 'DEBIAN_FRONTEND' => 'noninteractive'
  not_if { File.file?('/usr/bin/lxsession') }
end
package 'lxde'

execute 'install lightdm' do
  command 'apt-get install -q -y lightdm'
  environment 'DEBIAN_FRONTEND' => 'noninteractive'
  not_if { File.file?('/usr/sbin/lightdm') }
end
package 'lightdm'

# auto-login
cookbook_file '/etc/lightdm/lightdm.conf' do
  source 'etc/lightdm/lightdm.conf'
end

# browser
package 'iceweasel'

# Citrix client
icaclient_deb = 'icaclient_13.3.0.344519_armhf.deb'

# TODO : get file from website, bypass EULA click-agreement
cookbook_file "/var/cache/apt/archives/#{icaclient_deb}" do
  source "var/cache/apt/archives/#{icaclient_deb}"
end

dpkg_package 'icaclient' do
  package_name "/var/cache/apt/archives/#{icaclient_deb}"
  ignore_failure true # missing dependencies
end

# finish installation with dependencies # libxerces libwebkitgtk
execute 'apt-get install -q -f -y' do
  environment 'DEBIAN_FRONTEND' => 'noninteractive'
end

# ssl certificate
cert = 'VeriSign_Class_3_Public_Primary_Certification_Authority_-_G5.pem'
link "/opt/Citrix/ICAClient/keystore/cacerts/#{cert}" do
  to "/etc/ssl/certs/#{cert}"
end

# TODO : ericom blaze client (get it for armhf)
