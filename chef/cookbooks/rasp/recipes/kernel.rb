# update the firmware
package 'rpi-update'
execute 'rpi-update' do
  environment 'SKIP_WARNING' => '1'
end

# overclocking (only for 2B)
# TODO: settings for other models
cookbook_file '/boot/config.txt' do
  source 'boot/config.txt'
  only_if { node['rasp']['model'] == '2B' }
end

# use hardware random number generator
package 'rng-tools'
