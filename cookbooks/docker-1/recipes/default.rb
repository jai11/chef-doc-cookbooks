#
# Cookbook Name:: docker-1
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

include_recipe 'chef-docker'

# Pull latest image
docker_image 'jai11/ubuntu_sl_ssh'

# Run container exposing ports
#docker_container 'jai11/ubuntu_sl_ssh' do
#  detach true
#  port '2222:22'
#  env 'SETTINGS_FLAVOR=local'
#  volume '/mnt/docker:/docker-storage'
#end


docker_container 'jai11/ubuntu_sl_ssh' do
detach true
port '2221:22'
env 'SETTINGS_FLAVOR=local'
volume '/mnt/docker:/docker-storage'
container_name 'jenkinsDB1'
end
docker_container 'jai11/ubuntu_sl_ssh' do
detach true
port '2222:22'
env 'SETTINGS_FLAVOR=local'
volume '/mnt/docker:/docker-storage'
container_name 'jenkinsDB2'
end
