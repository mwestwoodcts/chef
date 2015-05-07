sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}

sql_server_database_table 'ARR_USER' do
  connection sql_server_connection_info
  database_name 'Arrest'
  schema_name   'dbo'
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.BEGIN' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '10'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.USERNAME' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.FORWARDTO' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '40'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.VIEWAPPR' do
  connection sql_server_connection_info
  type          'bit'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.VIEWUNAP' do
  connection sql_server_connection_info
  type          'bit'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.OFFNO' do
  connection sql_server_connection_info
  type          'smallint'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.OFFDESC' do
  connection sql_server_connection_info
  type          'smallint'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.OCCAT' do
  connection sql_server_connection_info
  type          'smallint'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.OCCDT' do
  connection sql_server_connection_info
  type          'smallint'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.SUPDT' do
  connection sql_server_connection_info
  type          'smallint'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.REPOFF' do
  connection sql_server_connection_info
  type          'smallint'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.REPOFFU' do
  connection sql_server_connection_info
  type          'smallint'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.DISTGRID' do
  connection sql_server_connection_info
  type          'smallint'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.FORWARD' do
  connection sql_server_connection_info
  type          'smallint'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.SUPER' do
  connection sql_server_connection_info
  type          'smallint'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.FREEZE' do
  connection sql_server_connection_info
  type          'smallint'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PRNQUEUE' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PRNQUEUED' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PRNQSERVER' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PRNTYPE' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '1'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ1' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ1DESC' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ1SVR' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ1TYPE' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '1'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ2' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ2DESC' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ2SVR' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ2TYPE' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '1'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ3' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ3DESC' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ3SVR' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ3TYPE' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '1'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ4' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ4DESC' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ4SVR' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ4TYPE' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '1'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ARR_DATE' do
  connection sql_server_connection_info
  type          'datetime'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ARR_TIME' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '5'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.RESIST' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '1'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.WEAPON' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '1'
  null          true
  action        :create
end 

sql_server_database_column 'Arrest.dbo.ARR_USER.WEAPONTYPE' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '10'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.DRINKING' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '1'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.DRUGS' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '1'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.AHOUSENU' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '6'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.AQUAD' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '2'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ASTREET' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '30'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.AHOUSESU' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '5'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ACITY' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '18'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ASTATE' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '2'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.AZIP' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '5'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.AZONE' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '4'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ADISTGRID' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '4'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ADGEO_LAW_SUB2' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '4'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ADGEO_LAW_SUB3' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '4'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.CRIMESCENE' do
  connection sql_server_connection_info
  type          'bit'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PHYEVID' do
  connection sql_server_connection_info
  type          'bit'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.PHYEVIDDES' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '70'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ARROFFNO' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '5'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ARROFFPERNO' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ARROFFNAME' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '25'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ARROFFUNIT' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '40'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.RETCOURT' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '25'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.RETDATE' do
  connection sql_server_connection_info
  type          'datetime'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.RETTIME' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '7'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.RETTEXT' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '50'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ARRESTJURISDICTION' do
  connection sql_server_connection_info
  type          'int'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ARRESTEDPRIOR' do
  connection sql_server_connection_info
  type          'int'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.INJURY' do
  connection sql_server_connection_info
  type          'int'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.INJURYEXTENT' do
  connection sql_server_connection_info
  type          'int'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.WEAPONID' do
  connection sql_server_connection_info
  type          'int'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.RESIDENCY' do
  connection sql_server_connection_info
  type          'int'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.RESISTTYPE' do
  connection sql_server_connection_info
  type          'int'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ALCOHOLTYPE' do
  connection sql_server_connection_info
  type          'int'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.DRUGTYPE' do
  connection sql_server_connection_info
  type          'int'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.UNIQUEKEY' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '22'
  null          false
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ALATITUDE' do
  connection sql_server_connection_info
  type          'float'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ALONGITUDE' do
  connection sql_server_connection_info
  type          'float'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.SROARREST' do
  connection sql_server_connection_info
  type          'int'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ACOUNTY' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '50'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ArrestedAtScene' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  null          true
  action        :create
end

sql_server_database_column 'Arrest.dbo.ARR_USER.ArrestLocation' do
  connection sql_server_connection_info
  type          'VARCHAR'
  size          '15'
  null          true
  action        :create
end