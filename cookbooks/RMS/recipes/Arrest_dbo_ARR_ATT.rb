
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'ARR_ATT'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.ARR_ATT.BEGIN' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_ARR_ATT_BEGIN'
	description 'Not used'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_ATT.ARRESTNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_ARR_ATT_ARRESTNO'
	description 'Arrest Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_ATT.ARRESTNOB' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_ARR_ATT_ARRESTNOB'
	description 'Arrest Number Backup'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_ATT.DATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.ARR_ATT.TIME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_ARR_ATT_TIME'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_ATT.OFFICER' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '40'
	null true
	action :create 
	constraint  'DF_ARR_ATT_OFFICER'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_ATT.LOCATION' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '100'
	null true
	action :create 
	constraint  'DF_ARR_ATT_LOCATION'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_ATT.END' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_ARR_ATT_END'
	description 'Not used'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_ATT.UNIQUEKEY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	description 'Primary key for the record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_ATT.MNINo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Suspect''s (person to serve) MNI Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_ATT.RESTRICTED' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_ARR_ATT_RESTRICTED'
	default '(0)'

end 

sql_server_database_column 'Arrest.dbo.ARR_ATT.ArrestReportUniqueFKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_ATT.AttemptDateTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.ARR_ATT.ArrestReportPersonFKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 


