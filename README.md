# RASP \<go>

1. install a base raspbian system with rapbian-ui-install
2. `apt-get install chef`
3. `cd chef && chef-client -z -c client.rb -r "recipe[rasp]"`
   (will take a loooong time to install everything)
4. reboot for nre kernel, firmware, settings, etc.

