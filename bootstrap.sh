#! /bin/sh
# RASP<go> bootstrap script
# curl -q https://github.com/nilx/RASP/raw/master/bootstrap.sh | sh

set -e
set -x

DEBIAN_FRONTEND=noninteractive apt-get install --quiet --yes --no-install-recommends git chef
git clone https://github.com/nilx/RASP.git
cd RASP/chef
chef-client -z -c client.rb -r "recipe[rasp]"
reboot
