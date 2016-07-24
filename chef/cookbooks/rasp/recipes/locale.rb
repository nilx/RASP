# update and regenerate the locale

execute 'locale-gen' do
  action :nothing
end

file '/etc/locale.gen' do
  content 'en_US.UTF-8 UTF-8'
  notifies :run, 'execute[locale-gen]', :immediately
end

#execute 'update-locale --reset LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8'
