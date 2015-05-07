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

sql_server_database_column 'Arrest.dbo.ARR_ATT.Begin' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '10'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_ATT.ARRESTNO' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_ATT.ARRESTNOB' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_ATT.DATE' do
  connection sql_server_connection_info
  type          'datetime'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_ATT.TIME' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '5'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_ATT.OFFICER' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '40'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_ATT.LOCATION' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '100'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_ATT.END' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '10'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_ATT.MNINo' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_ATT.RESTRICTED' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_ATT.ArrestReportUniqueFKey' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '22'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_ATT.AttemptDateTime' do
  connection sql_server_connection_info
  type          'datetime'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_ATT.ArrestReportPersonFKey' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '22'
  action        :create
end