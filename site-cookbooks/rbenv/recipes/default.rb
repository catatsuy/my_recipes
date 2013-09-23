#
# Cookbook Name:: rbenv
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# ruby dependency
%w{build-essential bison libreadline6-dev curl zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev autoconf libncurses5-dev}.each do |pkg|
  package pkg do
    action :install
  end
end

git "/home/vagrant/.rbenv" do
  repository "https://github.com/sstephenson/rbenv.git"
  action :checkout
  user "vagrant"
  group "vagrant"
end

directory "/home/vagrant/.rbenv/plugins" do
  owner "vagrant"
  group "vagrant"
  mode "0755"
  action :create
end

git "/home/vagrant/.rbenv/plugins/ruby-build" do
  repository "https://github.com/sstephenson/ruby-build.git"
  action :checkout
  user "vagrant"
  group "vagrant"
end
