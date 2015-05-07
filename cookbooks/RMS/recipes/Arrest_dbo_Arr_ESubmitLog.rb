sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}

sql_server_database_table 'Arr_ESubmitLog' do
  connection sql_server_connection_info
  database_name 'Arrest'
  schema_name   'dbo'
  action        :create
end

sql_server_database_column 'Arr_ESubmitLog.UniqueKey' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'Arr_ESubmitLog'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '22'
  columnname    'UniqueKey'
  null          false
  action        :create
end

sql_server_database_column 'Arr_ESubmitLog.ARRESTNO' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'Arr_ESubmitLog'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '15'
  columnname    'ARRESTNO'
  null          false
  action        :create
end

sql_server_database_column 'Arr_ESubmitLog.SubmissionType' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'Arr_ESubmitLog'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '4'
  columnname    'SubmissionType'
  null          false
  action        :create
end

sql_server_database_column 'Arr_ESubmitLog.TransmittedAt' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'Arr_ESubmitLog'
  schema_name   'dbo'
  type          'datetime'
  columnname    'TransmittedAt'
  null          false
  action        :create
end

sql_server_database_column 'Arr_ESubmitLog.ReceivedAt' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'Arr_ESubmitLog'
  schema_name   'dbo'
  type          'datetime'
  columnname    'ReceivedAt'
  null          true
  action        :create
end

sql_server_database_column 'Arr_ESubmitLog.ServerResponse' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'Arr_ESubmitLog'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '512'
  columnname    'ServerResponse'
  null          false
  action        :create
end

sql_server_database_column 'Arr_ESubmitLog.ExternalDocNum' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'Arr_ESubmitLog'
  schema_name   'dbo'
  type          'int'
  columnname    'ExternalDocNum'
  null          false
  action        :create
end

sql_server_database_column 'Arr_ESubmitLog.Username' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'Arr_ESubmitLog'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '40'
  columnname    'Username'
  null          true
  action        :create
end

sql_server_database_column 'Arr_ESubmitLog.XMLInstance' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'Arr_ESubmitLog'
  schema_name   'dbo'
  type          'text'
  columnname    'XMLInstance'
  null          false
  action        :create
end

sql_server_database_column 'Arr_ESubmitLog.XMLResponse' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'Arr_ESubmitLog'
  schema_name   'dbo'
  type          'VARCHAR'
  size          'max'
  columnname    'XMLResponse'
  null          true
  action        :create
end