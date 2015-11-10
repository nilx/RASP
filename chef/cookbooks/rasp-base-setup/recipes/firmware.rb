# update the firmware

include_recipe "#{cookbook_name}::packages"

package 'rpi-update'
execute 'firmware_update' do
  command 'rpi-update'
end

# overclocking

template '/boot/config.txt' do
  # TOSO: get kernal name from uname -r
  source 'config.txt.erb'
end
