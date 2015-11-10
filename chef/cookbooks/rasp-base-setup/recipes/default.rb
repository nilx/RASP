#
# Cookbook Name:: rasp-base-setup
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


# all recipes expected for a default setup

include_recipe "#{cookbook_name}::heartbeat"
include_recipe "#{cookbook_name}::motd"
include_recipe "#{cookbook_name}::user"
include_recipe "#{cookbook_name}::locale"

include_recipe "#{cookbook_name}::firmware"
include_recipe "#{cookbook_name}::rng"
include_recipe "#{cookbook_name}::chef"
include_recipe "#{cookbook_name}::utils"
