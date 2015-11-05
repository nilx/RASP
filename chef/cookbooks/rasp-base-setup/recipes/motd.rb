# use custom motd

template '/etc/motd' do
  source 'motd.erb'
end
