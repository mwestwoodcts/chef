
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'CfgArrType'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.CfgArrType.GroupId' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_CfgArrType_GroupId'
	default '(0)'
	description 'Group ID Code'

end 

sql_server_database_column 'Arrest.dbo.CfgArrType.TypeID' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_CfgArrType_TypeID'
	default '(0)'
	description 'Type ID Code'

end 

sql_server_database_column 'Arrest.dbo.CfgArrType.ArrestType' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_CfgArrType_ArrestType'
	description 'Arrest Type Code'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.CfgArrType.WarStatus' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_CfgArrType_WarStatus'
	description 'Warrant Status Code'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.CfgArrType.LongDescription' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_CfgArrType_LongDescription'
	description 'Long Description'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.CfgArrType.ShortDescription' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_CfgArrType_ShortDescription'
	description 'Short Description'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.CfgArrType.Comment' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	constraint  'DF_CfgArrType_Comment'
	description 'Comment'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.CfgArrType.LinkToOffense' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_CfgArrType_LinkToOffense'
	default '(0)'
	description 'Link To Offense Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.CfgArrType.ID' do 
	connection sql_server_connection_info
	type 'bigint' 
	null false
	action :create 
	description 'ID Code ?'

end 

sql_server_database_column 'Arrest.dbo.CfgArrType.INCLUDE' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_CfgArrType_INCLUDE'
	default '(0)'
	description 'Include Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.CfgArrType.CHOICEID' do 
	connection sql_server_connection_info
	type 'int' 
	null false
	action :create 
	description 'Choice ID Code'

end 

sql_server_database_column 'Arrest.dbo.CfgArrType.UniqueKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	description 'Primary key for the record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.CfgArrType.Heading' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '256'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.CfgArrType.IncludeMobile' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_CfgArrType_IncludeMobile'
	default '(0)'

end 

sql_server_database_column 'Arrest.dbo.CfgArrType.BasePaperType' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.CfgArrType.AllowPaperTypeChange' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	description '1 = Selectable paper type for changing types'

end 


