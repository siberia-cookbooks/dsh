#
# Cookbook Name:: dsh
# Recipe:: default
#
# Copyright 2012, Jacques Marneweck
#

%w{
  clusterit
}.each do |p|
  package "#{p}" do
    action :install
  end
end

directory "/root/.dsh" do
  action :create
end

template "/root/.dsh/cluster" do
  source "cluster.erb"
end
