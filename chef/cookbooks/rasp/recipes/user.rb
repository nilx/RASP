# default passwordless user, sudoer
package 'ruby-shadow'

user 'pi' do
  password 'raspberry'
  shell '/bin/bash'
  home '/home/pi'
  manage_home true
end

group 'sudo' do
  append true
  members 'pi'
end
