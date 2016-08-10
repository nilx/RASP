#! /bin/sh
# RASP<go> bootstrap script
# wget -q -O- https://github.com/nilx/RASP/raw/master/bootstrap.sh | sh

set -e
set -x

# require git and chef
export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install --quiet --yes --no-install-recommends git chef
# get RASP recipes
git clone https://github.com/nilx/RASP.git
# run RASP recipes
cd RASP/chef
./rasp.sh
#reboot
