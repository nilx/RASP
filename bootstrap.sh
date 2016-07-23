#! /bin/sh
# RASP<go> bootstrap script
# curl -L https://github.com/nilx/RASP/raw/master/bootstrap.sh | sh

set -e
set -x

DEBIAN_FRONTEND=noninteractive apt-get install --quiet --yes --no-install-recommends git chef
git clone https://github.com/nilx/RASP.git
cd RASP/chef
./rasp.sh
reboot
