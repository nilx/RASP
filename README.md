# RASP \<go>

1. install the base Raspbian system on a RaspberryPi from
  [Raspbian Jessie](https://www.raspberrypi.org/downloads/raspbian/)
2. login as `pi/raspberry`
3. `wget -q -O- https://github.com/nilx/RASP/raw/master/bootstrap.sh | sh`
   (will take a loooong time to install everything, and reboot when it's done)

You get:
* a working, minimal, LXDE-based desktop on Raspberry Pi,
  with a few performance/convenience tunings
* auto-login to user `pi` (sudoer, password:`raspberry`)
* access BB terminal from <https://bba.bloomberg.com/> with Citrix client
* access work PC and generic PC from <https://bbe.bloomberg.com/> with
  Citrix client

Useful as a second workstation for:
* business trips, on the hotel TV
  (bring your HDMI cable, keyboard and mouse)
* WFH without mixing work and home devices or in temporary locations
* disaster recovery

Tested on:
* RaspberryPi 2B, 3B

TODO:
* harden locale settings
* browser presets: no passwords
* bemp presets for wicd
* LXDE artwork
* unattended upgrades, weekly `rpi-update`
* start from full image and trim down

BUGS:
* BBA pop-ups steal the focus

LATER:
* hardware GPU acceleration: experimental and currently unstable
  (https://www.raspberrypi.org/blog/another-new-raspbian-release/)
* dual-host+monitor (two raspi + synergy)

WONTFIX:
* Ericom RDP client (no armhf version, from Ericom customer service)
* xdmx dual host+monitor (xdmx unusable according to multiple web reports)
* native Chrome or Raspbian Chromium (no arm builds)
* Opera browser (no arm build)
* Midori browser (not enough HTML5 support for Ericom RDP)
* Chromium from <http://ports.ubuntu.com/> (segfault, wily&xenial)
* rpi-update console feedback (requires chef version > 11.12)
* Slack client (no arm build, 3rd party clients unusable)
* Vidyo/NEXI web client (Linux unsupported)

### misc

#### Ericom HTML5

Somehow usable on Firefox, but slower and more CPU-hungry than Citrix

Shortcuts:
* ALT+PAGE UP 	Switches between programs from left to right
* ALT+PAGE DOWN 	Switches between programs from right to left
* ALT+HOME 	Displays the Start menu
* CTRL+ALT+END 	Brings up the Windows Security dialog box
* ALT+DELETE 	Displays the Windows menu
