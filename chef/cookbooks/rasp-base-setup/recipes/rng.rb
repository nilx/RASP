# use hardware random number generator

execute 'load_module' do
  command 'modprobe bcm2708-rng'
end
execute 'save_module' do
  command 'sed -i \'/^foo$/d\' /etc/modules' \
  + ' && echo bcm2708-rng >> /etc/modules'
end
package 'rng-tools'
