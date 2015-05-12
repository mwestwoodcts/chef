
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'ARR_USER'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.ARR_USER.BEGIN' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_ARR_USER_BEGIN'
	description 'Not used'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.USERNAME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_ARR_USER_USERNAME'
	description 'User Name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.FORWARDTO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '40'
	null true
	action :create 
	description 'Forward To'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.VIEWAPPR' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_ARR_USER_VIEWAPPR'
	default '(0)'
	description 'View Approval Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.VIEWUNAP' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_ARR_USER_VIEWUNAP'
	default '(0)'
	description 'View Unapproved Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.OFFNO' do 
	connection sql_server_connection_info
	type 'smallint' 
	null true
	action :create 
	constraint  'DF_ARR_USER_OFFNO'
	default '(0)'
	description 'Offense Number'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.OFFDESC' do 
	connection sql_server_connection_info
	type 'smallint' 
	null true
	action :create 
	constraint  'DF_ARR_USER_OFFDESC'
	default '(0)'
	description 'Offense Description'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.OCCAT' do 
	connection sql_server_connection_info
	type 'smallint' 
	null true
	action :create 
	constraint  'DF_ARR_USER_OCCAT'
	default '(0)'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.OCCDT' do 
	connection sql_server_connection_info
	type 'smallint' 
	null true
	action :create 
	constraint  'DF_ARR_USER_OCCDT'
	default '(0)'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.SUPDT' do 
	connection sql_server_connection_info
	type 'smallint' 
	null true
	action :create 
	constraint  'DF_ARR_USER_SUPDT'
	default '(0)'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.REPOFF' do 
	connection sql_server_connection_info
	type 'smallint' 
	null true
	action :create 
	constraint  'DF_ARR_USER_REPOFF'
	default '(0)'
	description 'Reporting Officer'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.REPOFFU' do 
	connection sql_server_connection_info
	type 'smallint' 
	null true
	action :create 
	constraint  'DF_ARR_USER_REPOFFU'
	default '(0)'
	description 'Reporting Officer Unit'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.DISTGRID' do 
	connection sql_server_connection_info
	type 'smallint' 
	null true
	action :create 
	constraint  'DF_ARR_USER_DISTGRID'
	default '(0)'
	description 'District Grid'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.FORWARD' do 
	connection sql_server_connection_info
	type 'smallint' 
	null true
	action :create 
	constraint  'DF_ARR_USER_FORWARD'
	default '(0)'
	description 'Forward'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.SUPER' do 
	connection sql_server_connection_info
	type 'smallint' 
	null true
	action :create 
	constraint  'DF_ARR_USER_SUPER'
	default '(0)'
	description 'Supervisor '

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.FREEZE' do 
	connection sql_server_connection_info
	type 'smallint' 
	null true
	action :create 
	constraint  'DF_ARR_USER_FREEZE'
	default '(0)'
	description 'Freeze '

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PRNQUEUE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_ARR_USER_PRNQUEUE'
	description 'Print Queue'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PRNQUEUED' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_ARR_USER_PRNQUEUED'
	description 'Print Queue Deleted'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PRNQSERVER' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_ARR_USER_PRNQSERVER'
	description 'Print Queue Server'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PRNTYPE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_ARR_USER_PRNTYPE'
	description 'Print Type'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ1' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_ARR_USER_PQ1'
	description 'Print Queue1 (Which Printer)'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ1DESC' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_ARR_USER_PQ1DESC'
	description 'Print Description1 (What''s Printing)'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ1SVR' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_ARR_USER_PQ1SVR'
	description 'Print Queue Server1'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ1TYPE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_ARR_USER_PQ1TYPE'
	description 'Print Queue Type1'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ2' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_ARR_USER_PQ2'
	description 'Print Queue2 (Which Printer)'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ2DESC' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_ARR_USER_PQ2DESC'
	description 'Print Description2 (What''s Printing)'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ2SVR' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_ARR_USER_PQ2SVR'
	description 'Print Queue Server2'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ2TYPE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_ARR_USER_PQ2TYPE'
	description 'Print Queue Type2'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ3' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_ARR_USER_PQ3'
	description 'Print Queue3 (Which Printer)'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ3DESC' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_ARR_USER_PQ3DESC'
	description 'Print Description3 (What''s Printing)'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ3SVR' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_ARR_USER_PQ3SVR'
	description 'Print Queue Server3'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ3TYPE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_ARR_USER_PQ3TYPE'
	description 'Print Queue Type3'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ4' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_ARR_USER_PQ4'
	description 'Print Queue4 (Which Printer)'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ4DESC' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_ARR_USER_PQ4DESC'
	description 'Print Description4 (What''s Printing)'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ4SVR' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_ARR_USER_PQ4SVR'
	description 'Print Queue Server3'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PQ4TYPE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_ARR_USER_PQ4TYPE'
	description 'Print Queue Type4'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ARR_DATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Arrest Date'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ARR_TIME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_ARR_USER_ARR_TIME'
	description 'Arrest Time'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.RESIST' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_ARR_USER_RESIST'
	description 'Resist Arrest (Y or N)'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.WEAPON' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_ARR_USER_WEAPON'
	description 'Weapon (Y,N,U)'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.WEAPONTYPE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_ARR_USER_WEAPONTYPE'
	description 'Weapon Type'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.DRINKING' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_ARR_USER_DRINKING'
	description 'Drinking (Y,N,U)'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.DRUGS' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_ARR_USER_DRUGS'
	description 'Drugs (Y,N,U)'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.AHOUSENU' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '6'
	null true
	action :create 
	constraint  'DF_ARR_USER_AHOUSENU'
	description 'House Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.AQUAD' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null true
	action :create 
	constraint  'DF_ARR_USER_AQUAD'
	description 'Quad/Zone'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ASTREET' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_ARR_USER_ASTREET'
	description 'Street Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.AHOUSESU' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_ARR_USER_AHOUSESU'
	description 'Housing Unit'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ACITY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '18'
	null true
	action :create 
	constraint  'DF_ARR_USER_ACITY'
	description 'City'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ASTATE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null true
	action :create 
	constraint  'DF_ARR_USER_ASTATE'
	description 'State'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.AZIP' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_ARR_USER_AZIP'
	description 'Zip'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.AZONE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '4'
	null true
	action :create 
	constraint  'DF_ARR_USER_AZONE'
	description 'Zone'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ADISTGRID' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '4'
	null true
	action :create 
	constraint  'DF_ARR_USER_ADISTGRID'
	description 'District Grid'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ADGEO_LAW_SUB2' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '4'
	null true
	action :create 
	constraint  'DF_ARR_USER_ADGEO_LAW_SUB2'
	description 'Geo Law Sub Area 2'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ADGEO_LAW_SUB3' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '4'
	null true
	action :create 
	constraint  'DF_ARR_USER_ADGEO_LAW_SUB3'
	description 'Geo Law Sub Area 3'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.CRIMESCENE' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_ARR_USER_CRIMESCENE'
	default '(0)'
	description 'Crime Scene Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PHYEVID' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_ARR_USER_PHYEVID'
	default '(0)'
	description 'Physical Evidence Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.PHYEVIDDES' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '70'
	null true
	action :create 
	constraint  'DF_ARR_USER_PHYEVIDDES'
	description 'Physical Evidence Description'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ARROFFNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_ARR_USER_ARROFFNO'
	description 'Arresting Officer Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ARROFFPERNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Arresting Officer Personnel Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ARROFFNAME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	constraint  'DF_ARR_USER_ARROFFNAME'
	description 'Arresting Officer Name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ARROFFUNIT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '40'
	null true
	action :create 
	constraint  'DF_ARR_USER_ARROFFUNIT'
	description 'Arresting Officer Unit'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.RETCOURT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	constraint  'DF_ARR_USER_RETCOURT'
	description 'Return Court'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.RETDATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Return Court Date'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.RETTIME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '7'
	null true
	action :create 
	constraint  'DF_ARR_USER_RETTIME'
	description 'Return Court Time'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.RETTEXT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	constraint  'DF_ARR_USER_RETTEXT'
	description 'Return Court Instructions'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ARRESTJURISDICTION' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_ARR_USER_ARRESTJURISDICTION'
	default '(0)'
	description 'Arrest Jurisdiction Code'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ARRESTEDPRIOR' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_ARR_USER_ARRESTEDPRIOR'
	default '(0)'
	description 'Arrest Prior Code'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.INJURY' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_ARR_USER_INJURY'
	default '(0)'
	description 'Injury Code'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.INJURYEXTENT' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_ARR_USER_INJURYEXTENT'
	default '(0)'
	description 'Extent Of Injury Code'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.WEAPONID' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_ARR_USER_WEAPONID'
	default '(0)'
	description 'Weapon ID'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.RESIDENCY' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_ARR_USER_RESIDENCY'
	default '(0)'
	description 'Residency Code'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.RESISTTYPE' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_ARR_USER_RESISTTYPE'
	default '(0)'
	description 'Resist Type Code'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ALCOHOLTYPE' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_ARR_USER_ALCOHOLTYPE'
	default '(0)'
	description 'Alcohol Type Code'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.DRUGTYPE' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_ARR_USER_DRUGTYPE'
	default '(0)'
	description 'Drug Type Code'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.UNIQUEKEY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	description 'Primary key for the record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ALATITUDE' do 
	connection sql_server_connection_info
	type 'float' 
	null true
	action :create 
	description 'Latitude'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ALONGITUDE' do 
	connection sql_server_connection_info
	type 'float' 
	null true
	action :create 
	description 'Longitude'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.SROARREST' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ACOUNTY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ArrestedAtScene' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_USER.ArrestLocation' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 


