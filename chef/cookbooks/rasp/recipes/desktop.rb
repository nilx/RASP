# install LXDE desktop
# TODO: fix timeout
execute 'install lightdm lxde' do
  command 'apt-get install -q -y lightdm lxde'
  environment 'DEBIAN_FRONTEND' => 'noninteractive'
  not_if { File.file?('/usr/bin/lxsession') \
           and File.file?('/usr/sbin/lightdm') }
end
package 'lightdm'
package 'lxde'
package 'raspberrypi-ui-mods'
package 'raspberrypi-net-mods'

# don't need xscreensaver
package 'xscreensaver' do
  action :remove
end

# auto-login
file '/etc/lightdm/lightdm.conf' do
  content "\
[SeatDefaults]
autologin-user=pi
autologin-user-timeout=0
"
end
