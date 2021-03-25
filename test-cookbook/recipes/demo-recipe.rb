#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.



package "tree" do
  action :install
end

file '/myfile2' do
  content 'This is my second content'
  action :create
  owner 'root'
  group 'root'
end


%w(httpd mysql git mariadb-server unzip vim) .each do |p|
  package p do
    action :install  
  end
end

%w(shobha ramu prabhu maruthi bhargav seenu) .each do |p|
  user p do
    action :create
  end
end





















