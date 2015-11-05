# use jessie repositories

template '/etc/apt/sources.list' do
  source 'sources.list.erb'
end

# update, upgrade
execute 'package_update' do
  command 'apt-get update'
end
execute 'package_upgrade' do
  command 'apt-get upgrade'
end

# raspberry pi utils
package 'raspi-copies-and-fills'
package 'raspi-config'

# generic utils
package 'apt-utils'
package 'aptitude'
package 'htop'
package 'emacs23-nox'
