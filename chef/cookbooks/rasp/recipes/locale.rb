# update and regenerate the locale

execute 'locale-gen' do
  action :nothing
end

cookbook_file '/etc/locale.gen' do
  source '/etc/locale.gen'
  notifies :run, 'execute[locale-gen]', :immediately
end

