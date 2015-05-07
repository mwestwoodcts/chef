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

sql_server_database_column 'Arrest.dbo.ARR_AFSS.Begin' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '10'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ARRESTNO' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ARRESTNOB' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.CHARGENUM' do
  connection sql_server_connection_info
  type          'int'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.GOC' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '1'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ACL' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '1'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ACD' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '1'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.AON' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '4'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.FSN' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  action        :create
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.COUNTS' do
  connection sql_server_connection_info
  type          'smallint'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.FCICCODEV' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '40'
  action        :create
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.FSDESC' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '200'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ADN' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '3'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.DV' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.HC' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.UCR' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '4'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.NCIC' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '4'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.END' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '10'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.UCRTYPE' do
  connection sql_server_connection_info
  type          'int'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.NIBRSTYPE' do
  connection sql_server_connection_info
  type          'int'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.PRIORITY' do
  connection sql_server_connection_info
  type          'int'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.CriminalGangActivity1' do
  connection sql_server_connection_info
  type          'int'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.CriminalGangActivity2' do
  connection sql_server_connection_info
  type          'int'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.CriminalGangActivity3' do
  connection sql_server_connection_info
  type          'int'
  action        :create
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.LocationType' do
  connection sql_server_connection_info
  type          'int'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.FS' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ORD' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ATTY_NO' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.COURT_NO' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '25'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.CITATION' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.WRITATT' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.DOM_VIO_INJ' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ORDER_ARR' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.XMITSORTDATE' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '19'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ARR_INDICATE' do
  connection sql_server_connection_info
  type          'int'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.PC' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.CAPIAS' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.AC' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.BW' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.FW' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.PW' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.JUVPU' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ACTIVITY' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '1'
  action        :create
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.DRUGTYPE' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '1'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.AMOUNT' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.SECTION' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.TRANSMITTED' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.DATE_ISSUED' do
  connection sql_server_connection_info
  type          'datetime'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.BONDAMT' do
  connection sql_server_connection_info
  type          'money'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.FSS_RecNo' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '10'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ArrestReportUniqueFKey' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '22'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.CargoTheft' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.MentalHealth' do
  connection sql_server_connection_info
  type          'bit'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.WarrantNo' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ChargeProbableCause' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          'max'
  action        :create
end