
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'ERRORARR'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.ERRORARR.BEGIN' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_ERRORARR_BEGIN'
	description 'Begin Column'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ERRORARR.DATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Record Crate Date'

end 

sql_server_database_column 'Arrest.dbo.ERRORARR.TIME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '8'
	null true
	action :create 
	constraint  'DF_ERRORARR_TIME'
	description 'Record Create Time'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ERRORARR.USER' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_ERRORARR_USER'
	description 'User Logged In Create'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ERRORARR.ERRORTYPE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	constraint  'DF_ERRORARR_ERRORTYPE'
	description 'Error Type'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ERRORARR.ERRORMESS' do 
	connection sql_server_connection_info
	type 'text' 
	null true
	action :create 
	constraint  'DF_ERRORARR_ERRORMESS'
	description 'Error Message'

end 

sql_server_database_column 'Arrest.dbo.ERRORARR.END' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_ERRORARR_END'
	description 'End Column'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ERRORARR.UNIQUEKEY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	description 'Primary key for the record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 


