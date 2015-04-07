# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "mwestwood"
client_key               "#{current_dir}/mwestwood.pem"
validation_client_name   "smartcop-validator"
validation_key           "#{current_dir}/smartcop-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/smartcop"
cookbook_path            ["#{current_dir}/../cookbooks"]
