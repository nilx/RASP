# network settings

# for usb wifi
package 'usbutils'
package 'firmware-realtek'

cookbook_file '/etc/network/interfaces' do
  source 'etc/network/interfaces'
end

