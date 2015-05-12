
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'OutOfSynchRecsARR_PER'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.OutOfSynchRecsARR_PER.ARRESTNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.OutOfSynchRecsARR_PER.ECSOID' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.OutOfSynchRecsARR_PER.CHANGED' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null false
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.OutOfSynchRecsARR_PER.OutOfSynchData' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '20'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.OutOfSynchRecsARR_PER.SynchDate' do 
	connection sql_server_connection_info
	type 'datetime' 
	null false
	action :create 

end 

sql_server_database_column 'Arrest.dbo.OutOfSynchRecsARR_PER.ARR_PER_UNIQUEKEY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.OutOfSynchRecsARR_PER.BATCH_UNIQUEKEY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 


