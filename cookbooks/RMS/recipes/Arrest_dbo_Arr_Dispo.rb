
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'Arr_Dispo'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ArrestNo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arr_Dispo_ArrestNo'
	description 'Arrest Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.DispoType' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_Arr_Dispo_DispoType'
	default '(0)'
	description 'Disposition: Disposition'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.DispoDesc' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	constraint  'DF_Arr_Dispo_DispoDesc'
	description 'Disposition: Other Description'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ReleaseType' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_Arr_Dispo_ReleaseType'
	default '(0)'
	description 'Disposition: Release Type'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ReleaseToMniNo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arr_Dispo_ReleaseToMniNo'
	description 'Disposition: Released To - MNI Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ReleaseDate' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Disposition: Release Date'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ReleaseTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Disposition: Release Time'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ReleaseOfficerPerNo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arr_Dispo_ReleaseOfficerPerNo'
	description 'Disposition: Release Officer - Personnel Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.Printed' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arr_Dispo_Printed'
	default '(0)'
	description 'Disposition: Printed'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.PrintedByPerNo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arr_Dispo_PrintedByPerNo'
	description 'Disposition: Printed By - Personnel Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.CourtDispoType' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_Arr_Dispo_CourtDispoType'
	default '(0)'
	description 'Disposition: Court Disposition Type'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.CourtDispoDesc' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_Arr_Dispo_CourtDispoDesc'
	description 'Disposition: Court Disposition Description'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.UNIQUEKEY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	description 'Primary key for the record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.PrintedBy' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	description 'Name of the person that paperwork was Printed By'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ReleaseOfficer' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	description 'Releasing officer''s name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ReleaseTo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	description 'Disposition: Released To - Name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ArrestReportUniqueFKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Dispo.ReleaseDateTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 


