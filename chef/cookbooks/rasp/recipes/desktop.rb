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
# web browser
package 'epiphany-browser'

# bookmarks toolbar
# cookbook_file '/etc/iceweasel/profile/bookmarks.html' do
#   source 'etc/iceweasel/profile/bookmarks.html'
# end
# FIXME: xulstore not used for new profiles
#cookbook_file '/etc/iceweasel/profile/xulstore.json' do
#  source 'etc/iceweasel/profile/xulstore.json'
#end
k
