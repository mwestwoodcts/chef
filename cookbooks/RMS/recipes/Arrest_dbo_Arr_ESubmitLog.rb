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

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.UniqueKey' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '22'
  null          false
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.ARRESTNO' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  null          false
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.SubmissionType' do
  connection sql_server_connection_info
  type          'VARCHAR'
  null          false
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.TransmittedAt' do
  connection sql_server_connection_info
  type          'datetime'
  null          false
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.ReceivedAt' do
  connection sql_server_connection_info
  type          'datetime'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.ServerResponse' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '512'
  null          false
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.ExternalDocNum' do
  connection sql_server_connection_info
  type          'int'
  null          false
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.Username' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '40'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.XMLInstance' do
  connection sql_server_connection_info
  type          'text'
  null          false
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.XMLResponse' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          'max'
  null          true
  action        :create
end