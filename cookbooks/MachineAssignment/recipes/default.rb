#
# Cookbook Name:: MachineAssignment
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#require 'fog/softlayer'
#@sl = Fog::Compute[:softlayer]
#@sl.servers # list all servers
#@sl.servers.size # get a count of all servers 
require 'chef/provisioning'
machine 'desktop1.example.com' do
 action :nothing
end

