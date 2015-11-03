# RASP\<GO>

Experiments towards a Raspberry Pi setup for WFH and business continuity.

## Details

* hardware : Raspberry Pi 2 Model B
* OS & distro : Raspbian
* deliverables:
  * raspbian-ua-netinst config and post-install scripts
  * presets for BBE and BBA
  * desktop/browser with links to essential resources
  * update and reinstall scripts
  * SD image

## Todo

* minimal test with browser and citrix client
* offload post-install config to Chef
* update via chef or reinstall via respbian-ua-netinst with trustable
  access to update/reinstall scripts and config
* use Raspbian Stretch?
* use own mirror
* locale setup to EN_US
* TZ setup from geoip (via gnome?)?
* disable SSH (few people will update their passwd)
* VPN config
* GPIO reboot script
* GP6/RUN reset hardware support
* internal design for casing
* internal sourcing of good power supplies and SD with standard image
