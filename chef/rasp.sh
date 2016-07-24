#! /bin/sh

# run rasp cookbook from default recipe
chef-client -z -c client.rb -r "recipe[rasp]"
