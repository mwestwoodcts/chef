sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}

sql_server_database_table 'ARR_AFSS' do
  connection sql_server_connection_info
  database_name 'Arrest'
  schema_name   'dbo'
  action        :create
end

sql_server_database_column 'Begin' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '10'
  action        :create
end

sql_server_database_column 'ARRESTNO' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '15'
  action        :create
end

sql_server_database_column 'ARRESTNOB' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '15'
  action        :create
end

sql_server_database_column 'CHARGENUM' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'int'
  action        :create
end

sql_server_database_column 'GOC' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '1'
  action        :create
end

sql_server_database_column 'ACL' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '1'
  action        :create
end

sql_server_database_column 'ACD' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '1'
  action        :create
end

sql_server_database_column 'AON' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '4'
  action        :create
end

sql_server_database_column 'FSN' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '30'
  action        :create
end 

sql_server_database_column 'COUNTS' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'smallint'
  action        :create
end

sql_server_database_column 'FCICCODEV' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '40'
  action        :create
end 

sql_server_database_column 'FSDESC' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '200'
  action        :create
end

sql_server_database_column 'ADN' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '3'
  action        :create
end

sql_server_database_column 'DV' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'HC' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'UCR' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '4'
  action        :create
end

sql_server_database_column 'NCIC' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '4'
  action        :create
end

sql_server_database_column 'END' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '10'
  action        :create
end

sql_server_database_column 'UCRTYPE' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'int'
  action        :create
end

sql_server_database_column 'NIBRSTYPE' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'int'
  action        :create
end

sql_server_database_column 'PRIORITY' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'int'
  action        :create
end

sql_server_database_column 'CriminalGangActivity1' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'int'
  action        :create
end

sql_server_database_column 'CriminalGangActivity2' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'int'
  action        :create
end

sql_server_database_column 'CriminalGangActivity3' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'int'
  action        :create
end 

sql_server_database_column 'LocationType' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'int'
  action        :create
end

sql_server_database_column 'FS' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'ORD' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'ATTY_NO' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '15'
  action        :create
end

sql_server_database_column 'COURT_NO' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '25'
  action        :create
end

sql_server_database_column 'CITATION' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end 

sql_server_database_column 'WRITATT' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'DOM_VIO_INJ' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'ORDER_ARR' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'XMITSORTDATE' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '19'
  action        :create
end

sql_server_database_column 'ARR_INDICATE' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'int'
  action        :create
end

sql_server_database_column 'PC' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'CAPIAS' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'AC' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'BW' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'FW' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'PW' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'JUVPU' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'ACTIVITY' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '1'
  action        :create
end 

sql_server_database_column 'DRUGTYPE' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '1'
  action        :create
end

sql_server_database_column 'AMOUNT' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '30'
  action        :create
end

sql_server_database_column 'SECTION' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '15'
  action        :create
end

sql_server_database_column 'TRANSMITTED' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'DATE_ISSUED' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'datetime'
  action        :create
end

sql_server_database_column 'BONDAMT' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'money'
  action        :create
end

sql_server_database_column 'FSS_RecNo' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '10'
  action        :create
end

sql_server_database_column 'ArrestReportUniqueFKey' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '22'
  action        :create
end

sql_server_database_column 'CargoTheft' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'MentalHealth' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'bit'
  action        :create
end

sql_server_database_column 'WarrantNo' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          '15'
  action        :create
end

sql_server_database_column 'ChargeProbableCause' do
  connection sql_server_connection_info
  database_name 'Arrest'
  table_name    'ARR_AFSS'
  schema_name   'dbo'
  type          'VARCHAR'
  size          'max'
  action        :create
end