
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'ARR_PC'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.ARR_PC.BEGIN' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_ARR_PC_BEGIN'
	description 'Not used'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PC.ARRESTNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_ARR_PC_ARRESTNO'
	description 'Arrest Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PC.PROBCAUSE' do 
	connection sql_server_connection_info
	type 'text' 
	null true
	action :create 
	constraint  'DF_ARR_PC_PROBCAUSE'
	description 'Probable Cause/Narrative: Probable Cause'

end 

sql_server_database_column 'Arrest.dbo.ARR_PC.ARRESTNOB' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_ARR_PC_ARRESTNOB'
	description 'Arrest Number Backup'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PC.END' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_ARR_PC_END'
	description 'Not used'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PC.UNIQUEKEY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	description 'Primary key for the record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PC.DATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Date of the probable cause'

end 

sql_server_database_column 'Arrest.dbo.ARR_PC.TIME' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Time of the probable cause statement was placed in system'

end 

sql_server_database_column 'Arrest.dbo.ARR_PC.NAME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	description 'Name of person placing the PC in the system'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PC.PERNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Personnel Number of the person placing the PC in the system'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PC.SORTDATE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '19'
	null true
	action :create 
	description 'Sort Date'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PC.PC_NUM' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null true
	action :create 
	description 'Probable Cause  Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PC.XMITSORTDATE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '19'
	null true
	action :create 
	description 'Transmit Sort Date'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PC.TRANSMITTED' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_ARR_PC_TRANSMITTED'
	default '(0)'
	description 'True if the record has been transmitted into system'

end 

sql_server_database_column 'Arrest.dbo.ARR_PC.ArrestReportUniqueFKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PC.PCDateTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 


