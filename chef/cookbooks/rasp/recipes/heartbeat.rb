# green led heartbeat mode
set_heartbeat = 'echo heartbeat  > /sys/class/leds/led0/trigger'

execute 'heartbeat now' do
  command set_heartbeat
end

cron 'heartbeat on reboot' do
  time :reboot
  command set_heartbeat
end
