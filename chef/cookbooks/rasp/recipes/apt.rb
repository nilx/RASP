# apt settings
file '/etc/apt/apt.conf.d/01rasp' do
  content "\
APT::Get::Install-Recomments 'false';
APT::Get::Install-Suggests   'false';
"
end

# start clean
execute 'dpkg --configure -a'
