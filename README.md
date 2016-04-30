# RASP \<go>

1. install the base raspbian system on a RaspberryPi 2B with [raspbian-ua-netinst](https://github.com/debian-pi/raspbian-ua-netinst)
2. `curl -L https://github.com/nilx/RASP/archive/master.zip -o RASP-master.zip && unzip RASP-master.zip`
2. `apt-get install chef && cd RASP-master/chef && chef-client -z -c client.rb -r "recipe[rasp]"`
   (will take a loooong time to install everything)
4. reboot for new kernel, firmware, settings, etc.

You get:
* a working, minimal, LXDE-based desktop on Raspberry Pi, with a few performance tunings
* auto-login to user `user`
* access BB terminal from <https://bba.bloomberg.com/> with Citrix client
* access generic PC from <https://bbe.bloomberg.com/> with Citrix client
* access own PC from <https://bbe.bloomberg.com/> with Ericom HTML in Firefox
