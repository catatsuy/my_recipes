#
# Cookbook Name:: zsh
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "zsh" do
  action :install
end

bash "install_something" do
  code <<-EOH
  chsh -s /bin/zsh vagrant
  EOH
end
