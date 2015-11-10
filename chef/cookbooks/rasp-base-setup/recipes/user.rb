# set default passwordless user

# ensure we have all the required dependencies
include_recipe "#{cookbook_name}::chef"

user 'user' do
  password ''
end
