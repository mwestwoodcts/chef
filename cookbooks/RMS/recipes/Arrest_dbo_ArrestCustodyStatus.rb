
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'ArrestCustodyStatus'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.ArrestCustodyStatus.UniqueKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ArrestCustodyStatus.ArrestReportUniqueFKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ArrestCustodyStatus.ArrestNo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null false
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ArrestCustodyStatus.SuspectDetained' do 
	connection sql_server_connection_info
	type 'bit' 
	null false
	action :create 

end 

sql_server_database_column 'Arrest.dbo.ArrestCustodyStatus.Comments' do 
	connection sql_server_connection_info
	type 'varchar' 
	size 'max'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ArrestCustodyStatus.DetainedLocation' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '150'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ArrestCustodyStatus.DetainedLocationContact' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '150'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ArrestCustodyStatus.ExpectedReleaseDate' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 


