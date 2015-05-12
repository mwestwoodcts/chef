
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'ArrestAssignLog'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.ArrestAssignLog.UNIQUEKEY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ArrestAssignLog.ArrestUniqueFKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ArrestAssignLog.ARRESTTYPE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ArrestAssignLog.WARSTATUS' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ArrestAssignLog.AssignPerNo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ArrestAssignLog.TIME_STAMP' do 
	connection sql_server_connection_info
	type 'datetime' 
	null false
	action :create 

end 


