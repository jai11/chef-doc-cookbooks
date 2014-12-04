#
# Cookbook Name:: data_bags_ip_port
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

data_bag('ip_port').each do |mirror|

variable_name_ip = data_bag_item('ip_port', mirror)["id"]
variable_value_ip = data_bag_item('ip_port', mirror)["ip"]

variable_name_port = data_bag_item('ip_port', mirror)["id"]
variable_value_port = data_bag_item('ip_port', mirror)["port"]


execute 'echo export ' + variable_name_ip + '_ip' + '=' + variable_value_ip + ' >> /etc/bash.bashrc' do
end

execute 'echo export ' + variable_name_port + '_port' + '=' + variable_value_port + ' >> /etc/bash.bashrc' do
end

end



#
