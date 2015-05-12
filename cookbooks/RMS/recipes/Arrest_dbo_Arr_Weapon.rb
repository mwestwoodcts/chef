
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'Arr_Weapon'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.Arr_Weapon.Weapon' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'Weapon Code'

end 

sql_server_database_column 'Arrest.dbo.Arr_Weapon.WeaponFeature' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'Weapon Feature Code'

end 

sql_server_database_column 'Arrest.dbo.Arr_Weapon.PersonLink' do 
	connection sql_server_connection_info
	type 'char' 
	size '22'
	null true
	action :create 
	description 'Uniquekey of the person the weapon should be linked to'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Weapon.ChargeLink' do 
	connection sql_server_connection_info
	type 'char' 
	size '22'
	null true
	action :create 
	description 'Uniquekey of the AFSS record weapon is linked to'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Weapon.Priority' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'Priority Code'

end 

sql_server_database_column 'Arrest.dbo.Arr_Weapon.UNIQUEKEY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	description 'Primary key for the record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Weapon.WeaponDescr' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	description 'Weapon Description'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Weapon.ArrestNo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Arrest Number for the record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_Weapon.ArrestReportUniqueFKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 


