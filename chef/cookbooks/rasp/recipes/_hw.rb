# check hardware version

# hardware revision code mapping to pi model
# B: RaspberryPi Model B revision 1.0, 2.0 and Model B+
# A: RaspberryPi Model A, Model A+
# C: RaspberryPi Compute Module
# 2B: RaspberryPi 2 Model B
# Z: RaspberryPi Zero
# 3B: RaspberryPi 3 Model B
hw_pi = {'0002' => 'B',
         '0003' => 'B',
         '0004' => 'B',
         '0005' => 'B',
         '0006' => 'B',
         '0007' => 'A',
         '0008' => 'A',
         '0009' => 'A',
         '000d' => 'B',
         '000e' => 'B',
         '000f' => 'B',
         '0010' => 'B',
         '0011' => 'C',
         '0012' => 'A',
         'a01041' => '2B',
         'a21041' => '2B',
         '900092' => 'Z',
         'a02082' => '3B',
         'a22082' => '3B',
        }

pi_model = 'unknown'
open('/proc/cpuinfo').each do |line|
  if line['Revision'] then
    pi_model = hw_pi[line.split(':')[1].strip()]
    break
  end
end

node.default['rasp']['model'] = pi_model
