# check hardware version
include_recipe "#{cookbook_name}::_hw"

# include all recipes expected for a default setup
include_recipe "#{cookbook_name}::apt"

include_recipe "#{cookbook_name}::kernel"
include_recipe "#{cookbook_name}::heartbeat"
include_recipe "#{cookbook_name}::motd"
#include_recipe "#{cookbook_name}::user"
include_recipe "#{cookbook_name}::locale"
include_recipe "#{cookbook_name}::tz"

include_recipe "#{cookbook_name}::services"
include_recipe "#{cookbook_name}::utils"
include_recipe "#{cookbook_name}::desktop"
include_recipe "#{cookbook_name}::browser"
include_recipe "#{cookbook_name}::citrix"
#include_recipe "#{cookbook_name}::net"
