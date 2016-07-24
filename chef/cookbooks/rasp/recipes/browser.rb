# web browser
package 'epiphany-browser'

# homepage
homepage = '/opt/rasp/home.html'
directory '/opt/rasp'
cookbook_file homepage do
  source 'home.html'
end

file '/usr/share/applications/BBLinks.desktop' do
  content "\
#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Link
URL=file://#{homepage}
Comment[en_US]=Bloomberg links and important contacts
Name=BB links
Comment=Bloomberg links and important contacts
Icon=gnome-panel-launcher
"
end
