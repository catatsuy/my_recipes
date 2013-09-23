#
# Cookbook Name:: my-settings
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "/home/vagrant/dotfiles" do
  enable_submodules true
  repository "https://github.com/catatsuy/dotfiles.git"
  action :sync
  user "vagrant"
  group "vagrant"
end

bash "install_dotfiles" do
  code <<-EOH
  cd /home/vagrant/dotfiles
  make force
  EOH
end

# zsh
git "/home/vagrant/.zsh" do
  enable_submodules true
  repository "https://github.com/catatsuy/dot.zsh.git"
  action :sync
  user "vagrant"
  group "vagrant"
end
