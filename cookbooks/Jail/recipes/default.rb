#
# Cookbook Name:: Jail
# Recipe:: default
#
# Copyright 2015, SmartCOP, Inc.
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'Jail::database'
include_recipe 'Jail::server_apps'