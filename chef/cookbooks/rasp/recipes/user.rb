# set default passwordless user

package 'ruby-shadow'

user 'user' do
  password 'rasp'
  shell '/bin/bash'
  home '/home/user'
  manage_home true
end

group 'sudo' do
  append true
  members 'user'
end
