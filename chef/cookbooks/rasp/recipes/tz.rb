# set timezone

# TODO: use Ruby
ip = `curl -s icanhazip.com`
tz = `curl -s geoip.cf/api/68.32.144.33/timezone`

file "/etc/timezone" do
  content "#{tz}"
end
