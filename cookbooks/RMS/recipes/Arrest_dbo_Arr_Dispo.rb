sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}

sql_server_database_table 'Arr_Dispo' do
  connection sql_server_connection_info
  database_name 'Arrest'
  schema_name   'dbo'
  action        :create
end


sql_server_database_column 'Arrest.dbo.Arr_Dispo.ArrestNo' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.DispoType' do
  connection sql_server_connection_info
  type          'int'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.DispoDesc' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '25'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ReleaseType' do
  connection sql_server_connection_info
  type          'int'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ReleaseToMniNo' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ReleaseDate' do
  connection sql_server_connection_info
  type          'datetime'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ReleaseTime' do
  connection sql_server_connection_info
  type          'datetime'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ReleaseOfficerPerNo' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.Printed' do
  connection sql_server_connection_info
  type          'bit'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.PrintedByPerNo' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.CourtDispoType' do
  connection sql_server_connection_info
  type          'int'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.CourtDispoDesc' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.UNIQUEKEY' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '22'
  null          false
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.PrintedBy' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '25'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ReleaseOfficer' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '25'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ReleaseTo' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '25'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ArrestReportUniqueFKey' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '22'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ReleaseDateTime' do
  connection sql_server_connection_info
  type          'datetime'
  null          true
  action        :create
end