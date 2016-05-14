# RASP \<go>

1. install the base raspbian system on a RaspberryPi 2B with [raspbian-ua-netinst](https://github.com/debian-pi/raspbian-ua-netinst)
2. login as `root/raspbian`
3. `curl -L https://github.com/nilx/RASP/raw/master/bootstrap.sh | sh`
   (will take a loooong time to install everything, and reboot when it's done)

You get:
* a working, minimal, LXDE-based desktop on Raspberry Pi,
  with a few performance tunings
* auto-login to user `user`
* access BB terminal from <https://bba.bloomberg.com/> with Citrix client
* access generic PC from <https://bbe.bloomberg.com/> with Citrix client
* access own PC from <https://bbe.bloomberg.com/> with Ericom HTML in Firefox

Useful as a second workstation for:
* business trips, on the hotel TV
  (bring your HDMI cable, keyboard and mouse)
* WFH without mixing work and home devices or in temporary location
* disaster recovery

TODO:
* Firefox presets: allow citrix, don't remember paswords
* Vidyo/NEXI web client
* Slack client
* bemp presets for wicd
* some VPN support
* basic minimal LXDE style and essential shortcuts
* unattended upgrades
* dual-host+monitor (two raspi + synergy)

WONTFIX:
* Ericom RDP client (no armhf version, from Ericom customer service)
* xdmx dual host+monitor (xdmx unusable according to multiple web reports)
* native Chrome or Raspbian Chromium (no arm builds)
* Midori browser (not enough HTML5 support for Ericom RDP)
* Opera browser (no arm build)
* Chromium from <http://ports.ubuntu.com/> (segfault, wily&xenial)
* rpi-update feedback (requires chef version > 11.12)
