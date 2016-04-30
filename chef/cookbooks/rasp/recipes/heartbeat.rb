# set the green light top heartbeat mode on startup

set_heartbeat = 'echo heartbeat  > /sys/class/leds/led0/trigger'

execute 'heartbeat now' do
  command set_heartbeat
  action :nothing
end

cron 'heartbeat' do
  time :reboot
  command set_heartbeat
  notifies :run, 'execute[heartbeat now]', :immediately
end
