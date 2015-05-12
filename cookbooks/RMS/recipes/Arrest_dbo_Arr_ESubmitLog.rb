
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'Arr_ESubmitLog'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.UniqueKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	description 'Primary Key For Record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.ARRESTNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null false
	action :create 
	description 'Arrest Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.SubmissionType' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '4'
	null false
	action :create 
	description 'Type of Submission'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.TransmittedAt' do 
	connection sql_server_connection_info
	type 'datetime' 
	null false
	action :create 
	description 'Transmitted Date'

end 

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.ReceivedAt' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Received Date'

end 

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.ServerResponse' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '512'
	null false
	action :create 
	description 'Response From Server'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.ExternalDocNum' do 
	connection sql_server_connection_info
	type 'int' 
	null false
	action :create 
	description 'External Document Number'

end 

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.Username' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '40'
	null true
	action :create 
	description 'Name of User'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.XMLInstance' do 
	connection sql_server_connection_info
	type 'text' 
	null false
	action :create 
	description 'XML Instance'

end 

sql_server_database_column 'Arrest.dbo.Arr_ESubmitLog.XMLResponse' do 
	connection sql_server_connection_info
	type 'varchar' 
	size 'max'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 


