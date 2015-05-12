
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'INSERT_TEXT'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.INSERT_TEXT.INSERT_TYPE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '40'
	null true
	action :create 
	description 'Type of text for insert'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.INSERT_TEXT.DESCRIPTION' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '40'
	null true
	action :create 
	description 'Description of the text'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.INSERT_TEXT.INSERT_TEXT' do 
	connection sql_server_connection_info
	type 'text' 
	null true
	action :create 
	description 'Text to be used for the insert'

end 

sql_server_database_column 'Arrest.dbo.INSERT_TEXT.UNIQUEKEY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	description 'Primary key for the record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 


