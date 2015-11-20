# install utilities

include_recipe "#{cookbook_name}::packages"

# raspberry pi utils
package 'raspi-copies-and-fills'
package 'raspi-config'

# general utils
package 'apt-utils'
package 'aptitude'
package 'htop'
package 'emacs23-nox'
package 'git'
package 'w3m'
