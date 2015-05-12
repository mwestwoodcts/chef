
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'ArrestAttachments'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.ArrestAttachments.UniqueKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ArrestAttachments.ArrestNo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ArrestAttachments.Attachment' do 
	connection sql_server_connection_info
	type 'image' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.ArrestAttachments.Description' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ArrestAttachments.DateAdded' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.ArrestAttachments.AddedByFKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ArrestAttachments.Comments' do 
	connection sql_server_connection_info
	type 'varchar' 
	size 'max'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ArrestAttachments.Filename' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '75'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 


