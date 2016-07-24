# update and regenerate the locale
execute 'update-locale --reset LANG="en_US.UTF-8" LANGUAGE="en_US:en"'

file '/etc/locale.gen' do
  content 'en_US.UTF-8 UTF-8'
  notifies :run, 'execute[locale-gen]', :immediately
end
execute 'locale-gen' do
  action :nothing
end

#file '/etc/default/keyboard' do
#  content ''
#end
