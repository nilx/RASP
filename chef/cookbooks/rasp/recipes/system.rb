# firmware update
package 'rpi-update'
execute 'rpi-update' do
  environment 'SKIP_WARNING' => '1'
end
cron 'rpi-update weekly' do
  time :weekly
  command 'SKIP_WARNING=1 rpi-update'
end

# hardware random number generator
package 'rng-tools'
# optimized memory management
package 'raspi-copies-and-fills'
# system configuration
package 'raspi-config'

# usb wifi for Pi 2B
package 'usbutils'
package 'firmware-realtek'
