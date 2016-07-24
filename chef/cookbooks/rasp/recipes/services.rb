# daemons
service 'chef-client' do
  action :disable
end
service 'ssh' do
  action :disable
end
