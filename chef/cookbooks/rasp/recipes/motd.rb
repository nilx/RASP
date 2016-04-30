# use custom motd

cookbook_file '/etc/motd' do
  source 'etc/motd'
end
