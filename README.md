# RASP\<GO>

Experiments towards a Raspberry Pi setup for WFH and business continuity.

## Details

* hardware : Raspberry Pi 2 Model B
* OS & distro : Raspbian
* developments:
  * raspbian-ua-netinst config and post-install scripts
  * chef scripts for system setup beyond netinst
  * tools and presets for BBE and BBA
  * Citrix, RDP and VPN tools?
  * desktop/browser links to essential resources for emergency preparedness,
    disaster management and business continuity
* deliverables:
  * shell & chef scripts
  * preinstalled SD image
  * git repo for updates

## Usage

1. Download and copy the [raspbian-ua-netinst][ua] image to you SD card.
2. Copy `./boot/*.txt` files to the boot partition.

```
wget https://github.com/nilx/RASP/archive/master.zip -O RASP-master.zip
unzip RASP-master.zip RASP-master/boot/*.txt
cp -a RASP-master/boot/* /path/to/boot/
```

3. Insert in your RasPi; plug to network; power up; wait 15 to 30 minutes....

Blinkenlights:
* red: raspbian base install
* red&green: post-install config
* green: done; you can use it

## Todo

* minimal test with browser and citrix client
* disable SSH (few people will update their passwd)
* GPIO reboot script, GP6/RUN hardware reset
* source design for casing
* source supply chain for good power supplies and SD with standard image

[ua]: https://github.com/debian-pi/raspbian-ua-netinst
