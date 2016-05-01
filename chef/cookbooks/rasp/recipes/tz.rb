# set timezone

require 'open-uri'
open('http://icanhazip.com/') do |f|
  ip = f.read.strip
end
open("http://geoip.cf/api/#{ip}/timezone") do |f|
  tz = f.read.strip
end

file "/etc/timezone" do
  content "#{tz}\n"
end
