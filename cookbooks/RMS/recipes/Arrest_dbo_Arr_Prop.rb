
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'Arr_Prop'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.PropertyNum' do 
	connection sql_server_connection_info
	type 'bigint' 
	null false
	action :create 
	description 'Unique Property Number'

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.ArrestNo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arr_Prop_ArrestNo'
	description 'Arrest Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.PropertyType' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_Arr_Prop_PropertyType'
	default '(0)'

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.Description' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	constraint  'DF_Arr_Prop_Description'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.ReceivedDate' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.ReceivedTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.ReceivedOffPerno' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arr_Prop_ReceivedOffPerno'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.Location' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_Arr_Prop_Location'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.Value' do 
	connection sql_server_connection_info
	type 'float' 
	null true
	action :create 
	constraint  'DF_Arr_Prop_Value'
	default '(0)'

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.Qty' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_Arr_Prop_Qty'
	default '(0)'

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.ReleaseDate' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.ReleaseTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.ReleaseOffPerNo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arr_Prop_ReleaseOffPerNo'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.ReleaseToMniNo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arr_Prop_ReleaseToMniNo'
	description 'Released to MNI number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.Released' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arr_Prop_Released'
	default '(0)'

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.JailReceived' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arr_Prop_JailReceived'
	default '(0)'
	description 'True if the Jail Received property'

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.UNIQUEKEY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	description 'Primary key for the record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.ReceivedOfficer' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.ReleaseOfficer' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.ArrestReportUniqueFKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Prop.PersonUniqueFKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 



