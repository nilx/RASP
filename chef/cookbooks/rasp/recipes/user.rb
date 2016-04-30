# set default passwordless user

package 'ruby-shadow'

user 'user' do
  password 'user' # can't use an empty password, not accepted by sudo
  shell '/bin/bash'
  home '/home/user'
  manage_home true
end

package 'sudo'

group 'sudo' do
  append true
  members 'user'
end
