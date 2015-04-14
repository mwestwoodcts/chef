include_recipe "iis"

windows_feature 'IIS-WebServerRole' do
  action :install
end

service "iis" do
  service_name "W3SVC"
  action :nothing
end

#Prereqs to install before installing the management console
features = %w{IIS-WebServerManagementTools IIS-ApplicationDevelopment NetFx3ServerFeatures NetFx3}
features.each do |feature|
  windows_feature feature do
    action :install
  end
end

#Install the management console
include_recipe "iis::mod_management"
include_recipe "iis::mod_aspnet"
include_recipe "iis::mod_aspnet45"

include_recipe "iis::remove_default_site"

remote_directory "#{node['iis']['docroot']}/RMS.Rest" do
  source "RMS.Rest"
end

iis_pool "CTS_Site" do
  runtime_version "4.0"
  pipeline_mode :Integrated
  action :add
end

iis_site "CTS" do
  protocol :http
  port 80
  path "#{node['iis']['docroot']}"
  application_pool "CTS_Site"
  action [:add,:start]
end

iis_pool "RMS.Rest" do
  runtime_version "4.0"
  pipeline_mode :Integrated
  action :add
end

iis_app "RMS.Rest" do
  site_name "CTS"
  path "/RMS.Rest"
  application_pool "RMS.Rest"
  physical_path "#{node['iis']['docroot']}/RMS.Rest"
  enabled_protocols "http"
  action :add
end