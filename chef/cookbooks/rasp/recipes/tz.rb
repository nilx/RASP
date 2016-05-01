# set timezone

# TODO: use Ruby
ip = `curl -s icanhazip.com`
tz = "curl -s geoip.cf/api/#{ip}/timezone"

file "/etc/timezone" do
  content "#{tz}"
end
