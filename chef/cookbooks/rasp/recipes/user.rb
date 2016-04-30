# set default passwordless user

package 'ruby-shadow'

user 'user' do
  password ''
  shell '/bin/bash'
  home '/home/user'
  manage_home true
end

package 'sudo'

group 'sudo' do
  append true
  members 'user'
end
