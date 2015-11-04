# RASP\<GO>

Experiments towards a Raspberry Pi setup for WFH and business continuity.

## Details

* hardware : Raspberry Pi 2 Model B
* OS & distro : Raspbian
* expected deliverables:
  * raspbian-ua-netinst config and post-install scripts
  * presets for BBE and BBA
  * RDP client?
  * VPN setup?
  * desktop/browser links to essential resources
  * update and reinstall scripts
  * SD image

## Usage

* download and copy the raspbian-ua-netinst image to you SD card
* copy `./boot` files to the boot partition
* insert in your RasPi; plug to network. power up. wait....
* when it stops blinking red, tha base install is done
* next: chef post-install setup

## Todo

* minimal test with browser and citrix client
* update via chef or reinstall via respbian-ua-netinst with trustable
  access to update/reinstall scripts and config
* use own mirror?
* disable SSH (few people will update their passwd)
* GPIO reboot script, GP6/RUN hardware reset
* source design for casing
* source supply chain for good power supplies and SD with standard image
