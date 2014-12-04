#
# Cookbook Name:: test
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash "do it" do
  code <<-EOH
    touch /tmp/a.txt
  EOH
end
