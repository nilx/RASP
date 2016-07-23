# RASP \<go>

1. install the base raspbian system on a RaspberryPi with [raspbian-ua-netinst](https://github.com/debian-pi/raspbian-ua-netinst)
2. login as `root/raspbian`
3. `curl -L https://github.com/nilx/RASP/raw/master/bootstrap.sh | sh`
   (will take a loooong time to install everything, and reboot when it's done)

You get:
* a working, minimal, LXDE-based desktop on Raspberry Pi,
  with a few performance/convenience tunings
* auto-login to user `user`
* essential bookmarks for Firefox
* access BB terminal from <https://bba.bloomberg.com/> with Citrix client
* access generic PC from <https://bbe.bloomberg.com/> with Citrix client
* access own PC from <https://bbe.bloomberg.com/> with Ericom HTML in Firefox

Useful as a second workstation for:
* business trips, on the hotel TV
  (bring your HDMI cable, keyboard and mouse)
* WFH without mixing work and home devices or in temporary location
* disaster recovery

Tested on:
* RaspberryPi 2B

TODO:
* Firefox presets: allow citrix, don't remember paswords,
  show bookmarks toolbar
* tests and confix.txt for RPi B and 3B, using https://github.com/Phiber2000/raspberrypi-ua-netinst
* drop Firefox, stick to default browser
* drop bookmarks, use browser-agnostic startpage with links
* bemp presets for wicd
* basic minimal LXDE style and essential shortcuts
* unattended upgrades

BUGS:
* Citrix ICA files are not downloaded by the browser anymore;
  they were, in the past, and a Citrix connection has been used
  succesfully; to be investigated

LATER:
* hardware GPU acceleration: experimental and unstable for the moment (https://www.raspberrypi.org/blog/another-new-raspbian-release/)
* try raspbian stretch (unstable) release
* some VPN support (when made available by InfoSys)
* dual-host+monitor (two raspi + synergy)

WONTFIX:
* Ericom RDP client (no armhf version, from Ericom customer service)
* xdmx dual host+monitor (xdmx unusable according to multiple web reports)
* native Chrome or Raspbian Chromium (no arm builds)
* Midori browser (not enough HTML5 support for Ericom RDP)
* Opera browser (no arm build)
* Chromium from <http://ports.ubuntu.com/> (segfault, wily&xenial)
* rpi-update feedback (requires chef version > 11.12)
* Slack client (no arm build, 3rd party clients unusable)
* Vidyo/NEXI web client (Linux unsupported)

### misc

#### Ericom keyboard shortcuts

* ALT+PAGE UP 	Switches between programs from left to right
* ALT+PAGE DOWN 	Switches between programs from right to left
* ALT+HOME 	Displays the Start menu
* CTRL+ALT+END 	Brings up the Windows Security dialog box
* ALT+DELETE 	Displays the Windows menu
