#
# Cookbook Name:: dsh
# Recipe:: default
#
# Copyright 2012, Jacques Marneweck
#
# All rights reserved - Do Not Redistribute
#

%w{
  clusterit
}.each do |p|
  package "#{p}" do
    action :install
  end
end
