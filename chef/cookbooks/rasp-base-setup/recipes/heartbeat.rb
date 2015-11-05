# set the green light top heartbeat mode on startup

cron 'heartbeat' do
  time :reboot
  command "echo heartbeat > /sys/class/leds/led0/trigger"
end
