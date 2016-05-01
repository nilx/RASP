# update the firmware
package 'rpi-update'
execute 'rpi-update' do
  environment {'SKIP_WARNING' => '1'}
end

# overclocking
cookbook_file '/boot/config.txt' do
  source 'boot/config.txt'
end

# use hardware random number generator
package 'rng-tools'
