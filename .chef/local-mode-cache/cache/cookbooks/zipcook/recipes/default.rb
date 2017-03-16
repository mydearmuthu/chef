#
# Cookbook:: zipcook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#create file

file "zipfile.txt"

#zip the file

script 'zipthefile' do
  interpreter 'bash'
  user 'root'
  cwd '/root/zipcook/recipes/'
  code <<-EOH
 zip -r zipfile.zip zipdir
  EOH
end

#unzip the file

script 'install_something' do
  interpreter 'bash'
  user 'root'
  cwd '/root/zipcook/recipes/'
  code <<-EOH
 unzip -o zipfile.zip
  EOH
end

#move the file

script 'install_something' do
  interpreter 'bash'
  user 'root'
  cwd '/root/zipcook/recipes/'
  code <<-EOH
 mv zipfile.txt /root/zipcook/recipes/movedir
  EOH
end
