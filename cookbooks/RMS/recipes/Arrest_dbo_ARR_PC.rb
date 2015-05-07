sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}

sql_server_database_table 'ARR_PC' do
  connection sql_server_connection_info
  database_name 'Arrest'
  schema_name   'dbo'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_PC.BEGIN' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '10'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_PC.ARRESTNO' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_PC.PROBCAUSE' do
  connection sql_server_connection_info
  type          'text'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_PC.ARRESTNOB' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_PC.END' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '10'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_PC.UNIQUEKEY' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '22'
  null          false
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_PC.DATE' do
  connection sql_server_connection_info
  type          'datetime'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_PC.TIME' do
  connection sql_server_connection_info
  type          'datetime'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_PC.NAME' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '25'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_PC.PERNO' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_PC.SORTDATE' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '19'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_PC.PC_NUM' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '2'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_PC.XMITSORTDATE' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '19'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_PC.TRANSMITTED' do
  connection sql_server_connection_info
  type          'bit'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_PC.ArrestReportUniqueFKey' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '22'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_PC.PCDateTime' do
  connection sql_server_connection_info
  type          'datetime'
  null          true
  action        :create
end