# update and regenerate the locale

template '/etc/locale.gen' do
  source 'locale.gen.erb'
end

execute 'locale-gen' do
  command 'locale-gen'
end

