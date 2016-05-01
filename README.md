# RASP \<go>

1. install the base raspbian system on a RaspberryPi 2B with [raspbian-ua-netinst](https://github.com/debian-pi/raspbian-ua-netinst)
2. `apt-get install -q -y git chef`
3. `git clone https://github.com/nilx/RASP.git`
4. `cd RASP/chef && chef-client -z -c client.rb -r "recipe[rasp]"`
   (will take a loooong time to install everything)
5. reboot for new kernel, firmware, settings, etc.

You get:
* a working, minimal, LXDE-based desktop on Raspberry Pi, with a few performance tunings
* auto-login to user `user`
* access BB terminal from <https://bba.bloomberg.com/> with Citrix client
* access generic PC from <https://bbe.bloomberg.com/> with Citrix client
* access own PC from <https://bbe.bloomberg.com/> with Ericom HTML in Firefox

Useful as a second workstation for:
* business trips, on the hotel TV
* WFH without mixing work and home devices or in temporary location
* disaster recovery

TODO:
* retrieve Citrix client directly from citrix.com
* add Ericom RDP client (need armhf .deb)
* Vidyo/NEXI (stand-alone or web client)
* some VPN support
* basic minimal LXDE style and essential shortcuts
* dual-host+monitor (two raspi + synergy or xdmx)
