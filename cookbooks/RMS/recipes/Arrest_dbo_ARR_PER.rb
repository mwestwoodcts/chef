
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'ARR_PER'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.ARR_PER.BEGIN' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	description 'Begin Column'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.ARRESTNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Arrest Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.ARRESTNOB' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Arrest Number Backup'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.ARRESTTYPE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	description 'Arrest Type'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.WARSTATUS' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	description 'Warrant Status'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.CODE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.SHOWCODE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	description 'MNI checks to see who to show arrest record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.ECSOID' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Person: MNI Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.LNAME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '20'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.FNAME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.MNAME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.TITLE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.DOB' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.APPROX_AGE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.RACE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.SEX' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.HISPANIC' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_ARR_PER_HISPANIC'
	default '(0)'
	description 'Hispanic Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.HEIGHT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.WEIGHT' do 
	connection sql_server_connection_info
	type 'smallint' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.HAIR' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '3'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.EYES' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '3'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.SSN' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '11'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.OCA' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.IDNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.IDSTATE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.IDTYPE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.BIRTHPLACE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	description 'Birth Place '
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.NATION' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Nation of citizenship'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.HOUSENU' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '8'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.QUAD' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.STREET' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.HOUSESU' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.CITY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '18'
	null true
	action :create 
	description 'City '
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.STATE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.ZIP' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.DISTGRID' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '6'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.ECSO_BAK' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'ECSO backup'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.ECSOIDBAK' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'ECSO ID Backup - MNI number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.GENAPPEAR' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '17'
	null true
	action :create 
	description 'General Appearance'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.DEMEANOR' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '13'
	null true
	action :create 
	description 'Demeanor of suspect'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.WEAPON' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '14'
	null true
	action :create 
	description 'Weapon used'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.WEAPFEAT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '16'
	null true
	action :create 
	description 'Weapon features'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.CLOTHING' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Clothing features'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.C01' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '20'
	null true
	action :create 
	description 'Clothing field -  refer to offense person table'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.C02' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '20'
	null true
	action :create 
	description 'Clothing field -  refer to offense person table'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.C03' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Clothing field -  refer to offense person table'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.C04' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Clothing field -  refer to offense person table'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.C05' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Clothing field -  refer to offense person table'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.C06' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Clothing field -  refer to offense person table'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.C07' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Clothing field -  refer to offense person table'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.C08' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Clothing field -  refer to offense person table'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.C09' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Clothing field -  refer to offense person table'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.C10' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Clothing field -  refer to offense person table'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.C11' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Clothing field -  refer to offense person table'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.C12' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Clothing field -  refer to offense person table'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.C13' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Clothing field -  refer to offense person table'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.C14' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Clothing field -  refer to offense person table'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.C15' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Clothing field -  refer to offense person table'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.DESCRIPT1' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '40'
	null true
	action :create 
	description 'Description'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.DESCRIPT2' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	description 'Description'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.ARREST' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	description 'True if suspect was placed under arrest'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.STATEMENT' do 
	connection sql_server_connection_info
	type 'text' 
	null true
	action :create 
	description 'Person: Statement'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.END' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	description 'End Column'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.ETHNICITY' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'Ethnicity of suspect'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.RESIDENTSTATUS' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'Resident status'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.DISPOSITION' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'Disposition of suspect'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.DRUGTYPE1' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'Drug type'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.DRUGTYPE2' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'Drug type'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.DRUGTYPE3' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'Drug type'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.DRUGQUANTITY1' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'Drug quantity'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.DRUGQUANTITY2' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'Drug quantity'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.DRUGQUANTITY3' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'Drug quantity'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.DRUGMEASUREMENT1' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'Drug Measurement'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.DRUGMEASUREMENT2' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'Drug Measurement'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.DRUGMEASUREMENT3' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'Drug Measurement'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.UNIQUEKEY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	description 'Primary key for the record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.ALIAS' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	description 'Suspect''s alias'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.COMPLEXION' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Person''s complexion'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.BUILD' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Person''s build'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.FEATURES' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	description 'Person''s features'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.P_STNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '8'
	null true
	action :create 
	description 'Person''s permanent street number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.P_STDIR' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null true
	action :create 
	description 'Person''s permanent street direction'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.P_STREET' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	description 'Person''s permanent  street name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.P_APT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	description 'Person''s permanent apartment number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.P_CITY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	description 'Person''s permanent city'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.P_STATE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null true
	action :create 
	description 'Person''s permanent state'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.P_ZIP' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	description 'Person''s permanent zip code'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.P_DATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Date permanent address was added'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.B_STNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '8'
	null true
	action :create 
	description 'Person''s business street number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.B_STDIR' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null true
	action :create 
	description 'Person''s business street direction'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.B_STREET' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	description 'Person''s business street name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.B_APT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	description 'Person''s business apartment number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.B_CITY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '18'
	null true
	action :create 
	description 'Person''s business city'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.B_STATE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null true
	action :create 
	description 'Person''s business state'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.B_ZIP' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	description 'Person''s business zip code'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.B_PHONE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '13'
	null true
	action :create 
	description 'Person''s business phone number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.B_NAME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '75'
	null true
	action :create 
	description 'Person''s business name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.XMITSORTDATE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '19'
	null true
	action :create 
	description 'Transmitted sort date'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.COD_TYPE1' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_ARR_PER_COD_TYPE1'
	default '(0)'
	description 'True if the Co Defendent is arrested'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.COD_TYPE2' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_ARR_PER_COD_TYPE2'
	default '(0)'
	description 'True if the Co Defendent is at large'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.COD_TYPE3' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_ARR_PER_COD_TYPE3'
	default '(0)'
	description 'True if the Co Defendent is felony'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.COD_TYPE4' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_ARR_PER_COD_TYPE4'
	default '(0)'
	description 'True if the Co Defendant is misdemeanor'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.COD_TYPE5' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_ARR_PER_COD_TYPE5'
	default '(0)'
	description 'True if the Co Defendant is juvenile'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.ADD_SOURCE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '20'
	null true
	action :create 
	description 'Address source'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.OCCU' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	description 'Occupation'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.INS_NO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'INS Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.CITIZEN' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	description 'Citizenship country'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.IND_ALCOHOL' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	description 'Indication of alcohol influence'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.IND_DRUGS' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	description 'Indication of drug influence'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.L_PHONE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '13'
	null true
	action :create 
	description 'Local phone number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.RES_TYPE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	description 'Residence type'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.CODEF_NUM' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null true
	action :create 
	description 'Co defendant number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.TRANSMITTED' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_ARR_PER_TRANSMITTED'
	default '(0)'
	description 'True if the report is transmitted'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.P_PHONE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '13'
	null true
	action :create 
	description 'Permanent phone number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.ZONE' do 
	connection sql_server_connection_info
	type 'char' 
	size '4'
	null true
	action :create 
	description 'GEO Zone'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.GEOSUB2' do 
	connection sql_server_connection_info
	type 'char' 
	size '4'
	null true
	action :create 
	description 'GEO Sub 1'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.GEOSUB3' do 
	connection sql_server_connection_info
	type 'char' 
	size '4'
	null true
	action :create 
	description 'GEO Sub 2'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.LATITUDE' do 
	connection sql_server_connection_info
	type 'float' 
	null true
	action :create 
	description 'GEO Latitude'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.LONGITUDE' do 
	connection sql_server_connection_info
	type 'float' 
	null true
	action :create 
	description 'GEO Longitude'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.IsUnknown' do 
	connection sql_server_connection_info
	type 'bit' 
	null false
	action :create 
	constraint  'DF_ARR_PER_IsUnknown'
	default '(0)'
	description 'True if is unknown'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.COUNTY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.ArrestReportUniqueFKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_PER.OffenseReportPersonUniqueFKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 


