
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'Arr_Log'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.Arr_Log.KEY1' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	constraint  'DF_Arr_Log_KEY1'
	description 'Arrest Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Log.KEY2' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	constraint  'DF_Arr_Log_KEY2'
	description 'Key 2 - different based on log type'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Log.KEY3' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	constraint  'DF_Arr_Log_KEY3'
	description 'Key 3 - different based on log type'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Log.NOTE1' do 
	connection sql_server_connection_info
	type 'text' 
	null true
	action :create 
	constraint  'DF_Arr_Log_NOTE1'
	description 'Note 1 - different based on log type'

end 

sql_server_database_column 'Arrest.dbo.Arr_Log.NOTE2' do 
	connection sql_server_connection_info
	type 'text' 
	null true
	action :create 
	constraint  'DF_Arr_Log_NOTE2'
	description 'Note 2 - different based on log type'

end 

sql_server_database_column 'Arrest.dbo.Arr_Log.NOTE3' do 
	connection sql_server_connection_info
	type 'text' 
	null true
	action :create 
	constraint  'DF_Arr_Log_NOTE3'
	description 'Note 3 - different based on log type'

end 

sql_server_database_column 'Arrest.dbo.Arr_Log.USER_ID' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	constraint  'DF_Arr_Log_USER_ID'
	description 'Login name of employee doing action'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Log.USER_KEY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	constraint  'DF_Arr_Log_USER_KEY'
	description 'Personnel Number of employee doing action'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Log.EVENT' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_Arr_Log_EVENT'
	default '(0)'
	description 'Event number'

end 

sql_server_database_column 'Arrest.dbo.Arr_Log.EVENT_TABLE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	constraint  'DF_Arr_Log_EVENT_TABLE'
	description 'Table effected'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Log.EVENT_STAMP' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	constraint  'DF_Arr_Log_EVENT_STAMP'
	description 'Event Date Time Stamp'

end 

sql_server_database_column 'Arrest.dbo.Arr_Log.EVENT_DATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Event Date'

end 

sql_server_database_column 'Arrest.dbo.Arr_Log.EVENT_TIME' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Event Time'

end 

sql_server_database_column 'Arrest.dbo.Arr_Log.UNIQUEKEY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	description 'Primary key for the record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 


