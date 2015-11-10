# install chef

include_recipe "#{cookbook_name}::packages"

package 'chef'
package 'ruby-shadow'

service 'chef-client' do
  action :disable
  action :stop
end
