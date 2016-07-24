# set timezone
require 'open-uri'
tz = 'Etc/UTC'
open('http://icanhazip.com/') do |f|
  ip = f.read.strip
  open("http://geoip.cf/api/#{ip}/timezone") do |f|
    tz = f.read.strip
  end
end

file "/etc/timezone" do
  content "#{tz}\n"
end

link "/etc/localtime" do
  to "/usr/share/zoneinfo/#{tz}"
end
