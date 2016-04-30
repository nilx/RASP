# apt settings

cookbook_file '/etc/apt/apt.conf.d/01rasp' do
  source 'etc/apt/apt.conf.d/01rasp'
end
