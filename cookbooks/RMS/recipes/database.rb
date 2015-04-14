sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}

sql_server_database 'Arrest' do
  connection sql_server_connection_info
  action     :create
end

sql_server_database_table 'ARR_AFSS' do
  connection sql_server_connection_info
  database_name 'Arrest'
  action     :create
end