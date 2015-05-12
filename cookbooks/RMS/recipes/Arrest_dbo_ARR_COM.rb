
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'ARR_COM'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.ARR_COM.BEGIN' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_ARR_COM_BEGIN'
	description 'Not used'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_COM.ARRESTNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_ARR_COM_ARRESTNO'
	description 'Arrest Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_COM.COMMENTS' do 
	connection sql_server_connection_info
	type 'text' 
	null true
	action :create 
	constraint  'DF_ARR_COM_COMMENTS'
	description 'Unprinted Comments: Comments'

end 

sql_server_database_column 'Arrest.dbo.ARR_COM.ARRESTNOB' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_ARR_COM_ARRESTNOB'
	description 'Arrest number Backup'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_COM.END' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_ARR_COM_END'
	description 'Not used'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_COM.UNIQUEKEY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	description 'Primary key for the record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_COM.DATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Date the comments were placed in the system'

end 

sql_server_database_column 'Arrest.dbo.ARR_COM.TIME' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Unprinted Comments: Time the comments were placed in the system'

end 

sql_server_database_column 'Arrest.dbo.ARR_COM.NAME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '40'
	null true
	action :create 
	description 'Unprinted Comments: Name of person placing comments in system'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_COM.PERNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Unprinted Comments: Personnel Number of person putting comments in the system'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_COM.SORTDATE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '19'
	null true
	action :create 
	description 'Sort Date'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_COM.XMITSORTDATE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '19'
	null true
	action :create 
	description 'Transmit Sort Date'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_COM.TRANSMITTED' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_ARR_COM_TRANSMITTED'
	default '(0)'
	description 'True if the unprinted comments had been transmitted'

end 

sql_server_database_column 'Arrest.dbo.ARR_COM.ArrestReportUniqueFKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_COM.CommentDateTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 


