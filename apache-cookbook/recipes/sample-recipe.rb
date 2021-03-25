#
# Cookbook:: apache-cookbook
# Recipe:: sample-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.



file '/configfile' do
  content "This is to get Attributes
  HOSTNAME :#{node['hostname']}
  IPADDRESS :#{node['ipaddress']}
  CPU :#{node['cpu']['0']['mhz']}
  MEMORY :#{node['memory']['total']}"
  owner 'root'
  group 'root'
  action :create
end

#execute "run a script" do
#  command <<-EOH
#  mkdir /saidir
#  touch /saifile
#  EOH
#end


user 'raj' do
  action :create
end

group 'DevOps' do
  action :create
  members 'raj'
  append true
end






















