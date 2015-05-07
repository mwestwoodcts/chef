sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}

sql_server_database_table 'ARR_COM' do
  connection sql_server_connection_info
  database_name 'Arrest'
  schema_name   'dbo'
  action        :create
end


sql_server_database_column 'Arrest.dbo.ARR_COM.BEGIN' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '10'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_COM.ARRESTNO' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_COM.COMMENTS' do
  connection sql_server_connection_info
  type          'text'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_COM.ARRESTNOB' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_COM.END' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '10'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_COM.UNIQUEKEY' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '22'
  null          false
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_COM.DATE' do
  connection sql_server_connection_info
  type          'datetime'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_COM.TIME' do
  connection sql_server_connection_info
  type          'datetime'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_COM.NAME' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '40'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_COM.PERNO' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_COM.SORTDATE' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '19'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_COM.XMITSORTDATE' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '19'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_COM.TRANSMITTED' do
  connection sql_server_connection_info
  type          'bit'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_COM.ArrestReportUniqueFKey' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '22'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_COM.CommentDateTime' do
  connection sql_server_connection_info
  type          'datetime'
  null          true
  action        :create
end