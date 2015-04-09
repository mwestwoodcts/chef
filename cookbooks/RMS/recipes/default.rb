#
# Cookbook Name:: RMS
# Recipe:: default
#
# Copyright 2015, SmartCOP, Inc.
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'RMS::MFclient'
include_recipe 'RMS::database'
include_recipe 'RMS::server_apps'
include_recipe 'RMS::web_services'