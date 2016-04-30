#! /bin/sh

chef-client -z -c client.rb -r "recipe[rasp]"
