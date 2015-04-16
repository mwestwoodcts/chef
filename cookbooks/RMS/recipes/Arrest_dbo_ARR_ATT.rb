sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}

sql_server_database_table 'ARR_ATT' do
  connection sql_server_connection_info
  database_name 'Arrest'
  schema_name   'dbo'
  action        :create
end

sql_server_database_column 'Begin' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_ATT'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '10'
  action        :create
end

sql_server_database_column 'ARRESTNO' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_ATT'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '15'
  action        :create
end

sql_server_database_column 'ARRESTNOB' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_ATT'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '15'
  action        :create
end

sql_server_database_column 'DATE' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_ATT'
  schema_name   'dbo'
  type          'datetime'
  action        :create
end

sql_server_database_column 'TIME' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_ATT'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '5'
  action        :create
end

sql_server_database_column 'OFFICER' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_ATT'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '40'
  action        :create
end

sql_server_database_column 'LOCATION' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_ATT'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '100'
  action        :create
end

sql_server_database_column 'END' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_ATT'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '10'
  action        :create
end

sql_server_database_column 'MNINo' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_ATT'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '15'
  action        :create
end

sql_server_database_column 'RESTRICTED' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_ATT'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'ArrestReportUniqueFKey' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_ATT'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '22'
  action        :create
end

sql_server_database_column 'AttemptDateTime' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_ATT'
  schema_name   'dbo'
  type          'datetime'
  action        :create
end

sql_server_database_column 'ArrestReportPersonFKey' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_ATT'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '22'
  action        :create
end