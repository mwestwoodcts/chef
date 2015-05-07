sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}

sql_server_database_table 'Arr_Log' do
  connection sql_server_connection_info
  database_name 'Arrest'
  schema_name   'dbo'
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Log.KEY1' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '50'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Log.KEY2' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '50'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Log.KEY3' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '50'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Log.NOTE1' do
  connection sql_server_connection_info
  type          'text'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Log.NOTE2' do
  connection sql_server_connection_info
  type          'text'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Log.NOTE3' do
  connection sql_server_connection_info
  type          'text'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Log.USER_ID' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '25'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Log.USER_KEY' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '25'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Log.EVENT' do
  connection sql_server_connection_info
  type          'int'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Log.EVENT_TABLE' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '50'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Log.EVENT_STAMP' do
  connection sql_server_connection_info
  type          'datetime'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Log.EVENT_DATE' do
  connection sql_server_connection_info
  type          'datetime'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Log.EVENT_TIME' do
  connection sql_server_connection_info
  type          'datetime'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Log.UNIQUEKEY' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '22'
  null          false
  action        :create
end