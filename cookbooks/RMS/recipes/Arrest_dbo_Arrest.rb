
sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}
sql_server_database_table 'Arrest'do 
	connection sql_server_connection_info
	database_name 'Arrest'
	schema_name 'dbo' 
	action  :create
end 

sql_server_database_column 'Arrest.dbo.Arrest.BEGIN' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_Arrest_BEGIN'
	description 'Begin Column'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARRESTTYPE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_ARRESTTYPE'
	description 'Arrest Type'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.WARSTATUS' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_WARSTATUS'
	description 'Warrant Status'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OTTIC' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_OTTIC'
	default '(0)'
	description 'True if the arrest report is an order to take into custody'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OFFENSENO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_OFFENSENO'
	description 'Offense Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.WARRANTNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_WARRANTNO'
	description 'Warrant Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARRESTNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_ARRESTNO'
	description 'Arrest Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JAILBOOKNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_JAILBOOKNO'
	description 'Jail Book Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OBTS' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_OBTS'
	description 'Court Information: OBTS Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OTHER' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_OTHER'
	description 'Offense: Other Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REPORTDATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Offense: Report Date'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REPORTTIME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_REPORTTIME'
	description 'Offense: Time Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.COURTCASE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '20'
	null true
	action :create 
	constraint  'DF_Arrest_COURTCASE'
	description 'Court Information: CaseNum Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LNAME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '20'
	null true
	action :create 
	constraint  'DF_Arrest_LNAME'
	description 'Persons: Suspect Last Name Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.FNAME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_FNAME'
	description 'Persons: Suspect First Name Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.MNAME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_MNAME'
	description 'Persons: Suspect Middle Name Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.TITLE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_TITLE'
	description 'Persons: Suspect Title Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.DOB' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Persons: Date Of Birth Field'

end 

sql_server_database_column 'Arrest.dbo.Arrest.APPROX_AGE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_APPROX_AGE'
	description 'Persons: Suspect Approximate Age (Edit/View Screen)'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.RACE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_RACE'
	description 'Persons: Suspect Race Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.SEX' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_SEX'
	description 'Persons: Suspect Sex Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.HISPANIC' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_HISPANIC'
	default '(0)'
	description 'Hispanic Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.Arrest.HEIGHT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_HEIGHT'
	description 'Persons: Suspect Height Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.WEIGHT' do 
	connection sql_server_connection_info
	type 'smallint' 
	null true
	action :create 
	constraint  'DF_Arrest_WEIGHT'
	default '(0)'
	description 'Persons: Suspect Weight Field'

end 

sql_server_database_column 'Arrest.dbo.Arrest.HAIR' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '3'
	null true
	action :create 
	constraint  'DF_Arrest_HAIR'
	description 'Persons: Suspect Color Hair Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.EYES' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '3'
	null true
	action :create 
	constraint  'DF_Arrest_EYES'
	description 'Persons: Suspect Color Eyes Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.SSN' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '11'
	null true
	action :create 
	constraint  'DF_Arrest_SSN'
	description 'Persons: Suspect SSN Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OCA' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_OCA'
	description 'Persons: Suspect OCA/Agency ID Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OCCUR_DATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Incident: Occur Date1'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OCCUR_TIME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_OCCUR_TIME'
	description 'Incident: Occur Time1'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OCCUR_DAT2' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Incident: Occur Date2'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OCCUR_TIM2' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_OCCUR_TIM2'
	description 'Incident: Occur Time2'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OC_HOUSENU' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '8'
	null true
	action :create 
	constraint  'DF_Arrest_OC_HOUSENU'
	description 'Incident: No Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OC_QUAD' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null true
	action :create 
	constraint  'DF_Arrest_OC_QUAD'
	description 'Incident: Di Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OC_STREET' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_Arrest_OC_STREET'
	description 'Incident: Street Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OC_HOUSESU' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_OC_HOUSESU'
	description 'Incident: Apt/Lot Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OC_CITY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '18'
	null true
	action :create 
	constraint  'DF_Arrest_OC_CITY'
	description 'Incident: City Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OC_STATE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null true
	action :create 
	constraint  'DF_Arrest_OC_STATE'
	description 'Incident: State Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OC_ZIP' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_OC_ZIP'
	description 'Incident: Zip Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OC_ZONE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '4'
	null true
	action :create 
	constraint  'DF_Arrest_OC_ZONE'
	description 'Incident: District Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OC_DISTGRD' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '4'
	null true
	action :create 
	constraint  'DF_Arrest_OC_DISTGRD'
	description 'Incident: Zone Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.DGEO_LAW_SUB2' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '4'
	null true
	action :create 
	constraint  'DF_Arrest_DGEO_LAW_SUB2'
	description 'Incident: Grid Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.DGEO_LAW_SUB3' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '4'
	null true
	action :create 
	constraint  'DF_Arrest_DGEO_LAW_SUB3'
	description 'Incident: Sub Grid Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.WDIST' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_WDIST'
	description 'Court Information: Zone Assigned Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.DISTGRID' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '6'
	null true
	action :create 
	constraint  'DF_Arrest_DISTGRID'
	description 'District Grid Code'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.SENTCOURT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_Arrest_SENTCOURT'
	description 'Court Information: Court Sent Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.RCVDCOURT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_Arrest_RCVDCOURT'
	description 'Court Information: Court Rcvd Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.SENTDATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Court Information: Court Sent Date'

end 

sql_server_database_column 'Arrest.dbo.Arrest.RCVDDATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Court Information: Court Received Date'

end 

sql_server_database_column 'Arrest.dbo.Arrest.SENTJUDGE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_Arrest_SENTJUDGE'
	description 'Court Information: Court Sent Judge'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.RCVDJUDGE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_Arrest_RCVDJUDGE'
	description 'Court Information: Court Received Judge'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.HOLD' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_HOLD'
	default '(0)'
	description 'Hold Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.Arrest.HOLDTILL' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Hold till date field'

end 

sql_server_database_column 'Arrest.dbo.Arrest.RECALLED' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Recall Date'

end 

sql_server_database_column 'Arrest.dbo.Arrest.RECALLTEXT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_Arrest_RECALLTEXT'
	description 'Recall text'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.RECALLAFT' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Recall After date and time'

end 

sql_server_database_column 'Arrest.dbo.Arrest.MAILED' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Date Mailed'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARRAIGN' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Arraign Date'

end 

sql_server_database_column 'Arrest.dbo.Arrest.COURTARR' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_Arrest_COURTARR'
	description 'Court Arrest'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JUDBOND' do 
	connection sql_server_connection_info
	type 'float' 
	null true
	action :create 
	constraint  'DF_Arrest_JUDBOND'
	default '(0)'
	description 'Judge Bond: Amount Field'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JUDANY' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_JUDANY'
	default '(0)'
	description 'Judge Bond: Any Check Box Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JUDPRO' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_JUDPRO'
	default '(0)'
	description 'Judge Bond: Pro Check Box Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JUDPTRIQ' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_JUDPTRIQ'
	default '(0)'
	description 'Judge Bond: PtrlQ Check Box Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JUDNONE' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_JUDNONE'
	default '(0)'
	description 'Judge Bond: None Check Box Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JUDCASH' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_JUDCASH'
	default '(0)'
	description 'Judge Bond: Cash Check Box Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JUDPTR' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_JUDPTR'
	default '(0)'
	description 'Judge Bond: Ptr Check Box Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JUDRORSIGN' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_JUDRORSIGN'
	default '(0)'
	description 'Judge Bond: RoR/Sign Check Box Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JUDPURGE' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_JUDPURGE'
	default '(0)'
	description 'Judge Bond: Purge Check Box Bit (On or Off)'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JUDPURGEC' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '32'
	null true
	action :create 
	constraint  'DF_Arrest_JUDPURGEC'
	description 'Court Information: Purge Comment Field'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LEOBOND' do 
	connection sql_server_connection_info
	type 'float' 
	null true
	action :create 
	constraint  'DF_Arrest_LEOBOND'
	default '(0)'
	description 'LEO bond amount'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LEO_NONE' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_LEO_NONE'
	default '(0)'
	description 'True if there is no LEO bond'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LEO_ROR' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_LEO_ROR'
	default '(0)'
	description 'True if the LEO Bond is ROR'

end 

sql_server_database_column 'Arrest.dbo.Arrest.RETCOURT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	constraint  'DF_Arrest_RETCOURT'
	description 'Return court name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.RETDATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Return to court date'

end 

sql_server_database_column 'Arrest.dbo.Arrest.RETTIME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '7'
	null true
	action :create 
	constraint  'DF_Arrest_RETTIME'
	description 'Return to court time'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARR_DATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Arrest date'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARR_TIME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '7'
	null true
	action :create 
	constraint  'DF_Arrest_ARR_TIME'
	description 'Arrest time'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.RESIST' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_RESIST'
	description 'Resisting arrest'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.RESISTTYPE' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_Arrest_RESISTTYPE'
	default '(0)'
	description 'Resisting arrest type'

end 

sql_server_database_column 'Arrest.dbo.Arrest.WEAPON' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_WEAPON'
	description 'Wepson used to resist arrest'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.RETTEXT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	constraint  'DF_Arrest_RETTEXT'
	description 'Return to court instructions'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.WEAPONID' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_Arrest_WEAPONID'
	default '(0)'
	description 'Wepon used for resisting ID'

end 

sql_server_database_column 'Arrest.dbo.Arrest.WEAPONTYPE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_WEAPONTYPE'
	description 'Wepon type used to resist arrest'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.DRINKING' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_DRINKING'
	description 'Field to tell if suspect was under influence'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.DRUGS' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_DRUGS'
	description 'Field to tell if suspect was on drugs'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ALCOHOLTYPE' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_Arrest_ALCOHOLTYPE'
	default '(0)'
	description 'Alcohol type'

end 

sql_server_database_column 'Arrest.dbo.Arrest.DRUGTYPE' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_Arrest_DRUGTYPE'
	default '(0)'
	description 'Drug type'

end 

sql_server_database_column 'Arrest.dbo.Arrest.RESIDENCY' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_Arrest_RESIDENCY'
	default '(0)'
	description 'Residency type'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARRESTJURISDICTION' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_Arrest_ARRESTJURISDICTION'
	default '(0)'
	description 'Arrest jurisdiction'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARRESTEDPRIOR' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_Arrest_ARRESTEDPRIOR'
	default '(0)'
	description 'Field to tell if suspect was arrested prior'

end 

sql_server_database_column 'Arrest.dbo.Arrest.INJURY' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_Arrest_INJURY'
	default '(0)'
	description 'Field to tell if there has been injury from resisting'

end 

sql_server_database_column 'Arrest.dbo.Arrest.INJURYEXTENT' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_Arrest_INJURYEXTENT'
	default '(0)'
	description 'Field to tell extent of injury occured by resisting'

end 

sql_server_database_column 'Arrest.dbo.Arrest.AHOUSENU' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '8'
	null true
	action :create 
	constraint  'DF_Arrest_AHOUSENU'
	description 'Arrested person''s house number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.AQUAD' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null true
	action :create 
	constraint  'DF_Arrest_AQUAD'
	description 'Arrested person''s direction of street'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ASTREET' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '30'
	null true
	action :create 
	constraint  'DF_Arrest_ASTREET'
	description 'Arrested person''s street name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.AHOUSESU' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_AHOUSESU'
	description 'Arrested person''s apartment number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ACITY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '18'
	null true
	action :create 
	constraint  'DF_Arrest_ACITY'
	description 'Arrested person''s city'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ASTATE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '2'
	null true
	action :create 
	constraint  'DF_Arrest_ASTATE'
	description 'Arrested person''s state'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.AZIP' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_AZIP'
	description 'Arrested person''s zip code'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.AZONE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '4'
	null true
	action :create 
	constraint  'DF_Arrest_AZONE'
	description 'Arrested person''s zone'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ADISTGRID' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '4'
	null true
	action :create 
	constraint  'DF_Arrest_ADISTGRID'
	description 'Arrested person''s district grid'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ADGEO_LAW_SUB2' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '4'
	null true
	action :create 
	constraint  'DF_Arrest_ADGEO_LAW_SUB2'
	description 'Arrested person''s goe law sub code'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ADGEO_LAW_SUB3' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '4'
	null true
	action :create 
	constraint  'DF_Arrest_ADGEO_LAW_SUB3'
	description 'Arrested person''s goe law sub code'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.CRIMESCENE' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_CRIMESCENE'
	default '(0)'
	description 'Crime scene'

end 

sql_server_database_column 'Arrest.dbo.Arrest.PHYEVID' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_PHYEVID'
	default '(0)'
	description 'True if there is physical evidence'

end 

sql_server_database_column 'Arrest.dbo.Arrest.PHYEVIDDES' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '70'
	null true
	action :create 
	constraint  'DF_Arrest_PHYEVIDDES'
	description 'Physical evidence description'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARROFFNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_ARROFFNO'
	description 'Arresting officer number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARROFFNAME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '40'
	null true
	action :create 
	constraint  'DF_Arrest_ARROFFNAME'
	description 'Arresting officer name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARROFFPERNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_ARROFFPERNO'
	description 'Arresting officer personnel number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARROFFUNIT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '40'
	null true
	action :create 
	constraint  'DF_Arrest_ARROFFUNIT'
	description 'Arresting officer unit'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REPOFFNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_REPOFFNO'
	description 'Reporting officer number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REPOFFNAME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '40'
	null true
	action :create 
	constraint  'DF_Arrest_REPOFFNAME'
	description 'Reporting officer name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REPOFFPERNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_REPOFFPERNO'
	description 'Reporting officer personnel number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REPOFFUNIT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '40'
	null true
	action :create 
	constraint  'DF_Arrest_REPOFFUNIT'
	description 'Reporting officer unit'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REPOFFAGENCY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '4'
	null true
	action :create 
	constraint  'DF_Arrest_REPOFFAGENCY'
	description 'Reporting officer officer agency name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.FORWARDTO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '40'
	null true
	action :create 
	constraint  'DF_Arrest_FORWARDTO'
	description 'Forward report to'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.FINISHED' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_FINISHED'
	description 'Tells if report is finished'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARRSUPAPP' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_ARRSUPAPP'
	description 'Arresting officer supervisor approval'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARRSUPNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_ARRSUPNO'
	description 'Arresting officer''s supervisor number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARRSUPNAME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	constraint  'DF_Arrest_ARRSUPNAME'
	description 'Arresting officer''s supervisor name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARRSUPPERNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_ARRSUPPERNO'
	description 'Arresting officer''s supervisor personnel number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARRSUPDATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Arresting officer''s supervisor approval date'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARRSUPTIME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_ARRSUPTIME'
	description 'Arresting officer''s supervisor approval time'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REPTAKER' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_Arrest_REPTAKER'
	description 'Report taker name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REPTAKERPERNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_REPTAKERPERNO'
	description 'Report taker personnel number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REPTAKERD' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Report taker took call on date'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REPTAKERT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_REPTAKERT'
	description 'Report taker took call on time'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REPTAKERDE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Report taker closed call date'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REPTAKERTE' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_REPTAKERTE'
	description 'Report taker closed call time'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.SERVEBY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_Arrest_SERVEBY'
	description 'Warrant was served by name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.SERVEDBYPERNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_SERVEDBYPERNO'
	description 'Warrant was served by personnel number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.SERVEBYD' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Date warrant was served'

end 

sql_server_database_column 'Arrest.dbo.Arrest.SERVEBYT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_SERVEBYT'
	description 'Time warrant was served'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.UNSERVEBY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_Arrest_UNSERVEBY'
	description 'Warrant was unserved by name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.UNSERVEDBYPERNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_UNSERVEDBYPERNO'
	description 'Warrant was unserved by personnel number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.UNSERVEBYD' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Date the warrant was unserved'

end 

sql_server_database_column 'Arrest.dbo.Arrest.UNSERVEBYT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_UNSERVEBYT'
	description 'Time warrant was unserved'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ALERTDATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Alert until date'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ALERTTEXT' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	constraint  'DF_Arrest_ALERTTEXT'
	description 'Instructions for the alert'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.MODBY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_Arrest_MODBY'
	description 'Modified by name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.MODBYPERNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	constraint  'DF_Arrest_MODBYPERNO'
	description 'Modified by personnel number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.MODDATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Modified  date'

end 

sql_server_database_column 'Arrest.dbo.Arrest.MODTIME' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Modified time'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LOCK' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_LOCK'
	default '(0)'
	description 'True if the record has been locked'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LOCKPSW' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_Arrest_LOCKPSW'
	description 'Password of person that locked record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LOCKBY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_Arrest_LOCKBY'
	description 'Locked by name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LOCKDATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Date record was locked'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LOCKTIME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_LOCKTIME'
	description 'Time record was locked'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.UNLOCKBY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_Arrest_UNLOCKBY'
	description 'Record unlocked by name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.UNLOCKDATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Date record was unlocked'

end 

sql_server_database_column 'Arrest.dbo.Arrest.UNLOCKTIME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	constraint  'DF_Arrest_UNLOCKTIME'
	description 'Time record was unlocked'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.END' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	constraint  'DF_Arrest_END'
	description 'End Column'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.SROARREST' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	constraint  'DF_Arrest_SROARREST'
	default '(0)'

end 

sql_server_database_column 'Arrest.dbo.Arrest.IBRSArrestType' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'IBRS Arrest type'

end 

sql_server_database_column 'Arrest.dbo.Arrest.UNIQUEKEY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null false
	action :create 
	description 'Primary key for the record'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.BOOKDATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Date arrested person was booked'

end 

sql_server_database_column 'Arrest.dbo.Arrest.BOOKTIME' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Time person arrested was booke'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JAILDATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Date person was placed in Jail'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JAILTIME' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Time person was placed in jail'

end 

sql_server_database_column 'Arrest.dbo.Arrest.FP_BY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	description 'Finger printed by name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.COUNTY_IDNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	description 'County ID number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.FDLE_NO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'FDLE number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.DOC_NO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'DOC number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.FBI_NO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'FBI Number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.MAND_COURT' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_MAND_COURT'
	default '(0)'
	description 'True if there is mandatory court date'

end 

sql_server_database_column 'Arrest.dbo.Arrest.NOT_COURT' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_NOT_COURT'
	default '(0)'
	description 'True if it is not mandatory to go to court'

end 

sql_server_database_column 'Arrest.dbo.Arrest.COURT_LOC' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	description 'Court Location'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.MIRANDA_WARN' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_MIRANDA_WARN'
	default '(0)'
	description 'True if person had miranda warning read to him'

end 

sql_server_database_column 'Arrest.dbo.Arrest.HOLD_AGCY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '35'
	null true
	action :create 
	description 'Agency person is being held for'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.VERIFIED_BY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	description 'Verified by name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REASON' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	description 'Reason for not letting an arrested person bond out'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.BONDDATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Bond date'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REL_DATE' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Release date'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REL_TIME' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Release time'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REL_AM_PM' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_REL_AM_PM'
	description 'Release AM or PM'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.BOND_CHG1' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '20'
	null true
	action :create 
	description 'Bond charge number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.BOND_CHG2' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '20'
	null true
	action :create 
	description 'Bond charge number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.BOND_TYPE1' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	description 'Bond type'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.BOND_TYPE2' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	description 'Bond type'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JUV' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_JUV'
	description 'Tells if person is juvenile'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.FELONY' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_FELONY'
	default '(0)'
	description 'True if Charge type is a felony'

end 

sql_server_database_column 'Arrest.dbo.Arrest.TFELONY' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_TFELONY'
	default '(0)'
	description 'True if Charge type is a traffic felony'

end 

sql_server_database_column 'Arrest.dbo.Arrest.MISD' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_MISD'
	default '(0)'
	description 'True if Charge type is a misdemeanor'

end 

sql_server_database_column 'Arrest.dbo.Arrest.TMISD' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_TMISD'
	default '(0)'
	description 'True if Charge type is a traffic misdemeanor'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ORDINANCE' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_ORDINANCE'
	default '(0)'
	description 'True if Charge type is a local ordinance'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OTHERCHG' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_OTHERCHG'
	default '(0)'
	description 'True if charge type is other'

end 

sql_server_database_column 'Arrest.dbo.Arrest.FP_IDONLY' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_FP_IDONLY'
	default '(0)'
	description 'True if fingerprinting was for identification only'

end 

sql_server_database_column 'Arrest.dbo.Arrest.FP_CRIM' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_FP_CRIM'
	default '(0)'
	description 'True if finger printing for Criminal reasons'

end 

sql_server_database_column 'Arrest.dbo.Arrest.FP_AFIS' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_FP_AFIS'
	default '(0)'
	description 'True if fingerprinting is for AFIS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.FP_BY_PERNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Fingerprinting was done by personnel number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OATHADMINPERNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Personnel number of person giving there oath on the arrest'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.VERBYPERNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Personnel number of '
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.RET_AM_PM' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_RET_AM_PM'
	description 'Return court date AM or PM'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REL_OFFPERNO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Releasing officer personnel number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OC_BUS_NAME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '40'
	null true
	action :create 
	description 'Place of occurrence business name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARR_BUS_NAME' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '40'
	null true
	action :create 
	description 'Place of arrest business name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OCCUR_AM_PM' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_OCCUR_AM_PM'
	description 'Occurence time AM or PM'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.SENTTIME' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Sentence time'

end 

sql_server_database_column 'Arrest.dbo.Arrest.SENT_AM_PM' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_SENT_AM_PM'
	description 'Sentence AM or PM'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.AssignType' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	description 'Officer assigned type'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.AssignUnit' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '40'
	null true
	action :create 
	description 'Officer assigned unit'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.AssignPerNo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	description 'Officer assigned personnel number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OATHADMIN' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	description 'Oath administered name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.REL_OFF' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '25'
	null true
	action :create 
	description 'Releasing officer name'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ARRESTTYPE_FHP' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_ARRESTTYPE_FHP'
	default '(1)'
	description 'FHP arrest type'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OFFENSEJURISDICTION' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'Offense jurisdiction'

end 

sql_server_database_column 'Arrest.dbo.Arrest.TRANSMITTED' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_TRANSMITTED'
	default '(0)'
	description 'True if the record has been transmitted'

end 

sql_server_database_column 'Arrest.dbo.Arrest.RADIONO' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '5'
	null true
	action :create 
	description 'Radio number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ORI' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '9'
	null true
	action :create 
	description 'Agency ORI number'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.XMITTED_ON' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 
	description 'Date record transmitted'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JUDOPTION8' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_JUDOPTION8'
	default '(0)'
	description 'Judge option - configurable in CFG'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JUDOPTION9' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_JUDOPTION9'
	default '(0)'
	description 'Judge option - configurable in CFG'

end 

sql_server_database_column 'Arrest.dbo.Arrest.JUDOPTION10' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_JUDOPTION10'
	default '(0)'
	description 'Judge option - configurable in CFG'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LEO_OPTION3' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_LEO_OPTION3'
	default '(0)'
	description 'LEO option - configurable in CFG'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LEO_OPTION4' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_LEO_OPTION4'
	default '(0)'
	description 'LEO option - configurable in CFG'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LEO_OPTION5' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_LEO_OPTION5'
	default '(0)'
	description 'LEO option - configurable in CFG'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LEO_OPTION6' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_LEO_OPTION6'
	default '(0)'
	description 'LEO option - configurable in CFG'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LEO_OPTION7' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_LEO_OPTION7'
	default '(0)'
	description 'LEO option - configurable in CFG'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LEO_OPTION8' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_LEO_OPTION8'
	default '(0)'
	description 'LEO option - configurable in CFG'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LEO_OPTION9' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_LEO_OPTION9'
	default '(0)'
	description 'LEO option - configurable in CFG'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LEO_OPTION10' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_LEO_OPTION10'
	default '(0)'
	description 'LEO option - configurable in CFG'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OC_LATITUDE' do 
	connection sql_server_connection_info
	type 'float' 
	null true
	action :create 
	description 'Incident: Latitude Field'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OC_LONGITUDE' do 
	connection sql_server_connection_info
	type 'float' 
	null true
	action :create 
	description 'Incident: Longitude Field'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ALATITUDE' do 
	connection sql_server_connection_info
	type 'float' 
	null true
	action :create 
	description 'Arrested person''s Latitude'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ALONGITUDE' do 
	connection sql_server_connection_info
	type 'float' 
	null true
	action :create 
	description 'Arrested person''s Longitude'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ETHNICITY' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.EnteredInCIC' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '1'
	null true
	action :create 
	constraint  'DF_Arrest_EnteredInCIC'
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.SpecialConditionExist' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 
	constraint  'DF_Arrest_SpecialConditionExist'
	default '(0)'

end 

sql_server_database_column 'Arrest.dbo.Arrest.SpecialConditionDesc' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '100'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.AssignAgency' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '4'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.LJBONDFLAG' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.SubmitStatus' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'reference: cfg:ConfigChoices'

end 

sql_server_database_column 'Arrest.dbo.Arrest.SubmitExternalDocID' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 
	description 'This is the document id returned when submit succedes'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OC_COUNTY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ACOUNTY' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OccurFromDateTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.OccurToDateTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.ArrestDateTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.ReportDateTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.OffenseReportUniqueFKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ArrestReportPersonFKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.PermanentKey' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ReportStatus' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerCreatedDateTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerAgency' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerAgencyORI' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '20'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerName' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '20'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerLoginName' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '20'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerUniqueUserID' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '20'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerAgencyGroup' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '22'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ReportCompletedDateTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerCompleted' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerCompletedDateTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerPrinted' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerPrintedDateTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerTransmitted' do 
	connection sql_server_connection_info
	type 'int' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerTransmittedDateTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerSystemTransmitAck' do 
	connection sql_server_connection_info
	type 'bit' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerSystemTransmitAckDateTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.OC_CITYNo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '18'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OC_COUNTYNo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerOrgUnit' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerIDNo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.OfficerRank' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '10'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.BookingFacility' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.BookingLocation1' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.BookingLocation2' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.BookingPhone' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '20'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.CourtAddress' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '100'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.CourtDateTime' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.CourtPhone' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '20'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.UCRReviewD' do 
	connection sql_server_connection_info
	type 'datetime' 
	null true
	action :create 

end 

sql_server_database_column 'Arrest.dbo.Arrest.UCRReviewer' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.UCRReviewPerNo' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ECSOID' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ECSOIDBAK' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.CourtName' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '50'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ArrestedAtScene' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.ArrestLocation' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.IncidentLocation' do 
	connection sql_server_connection_info
	type 'varchar' 
	size '15'
	null true
	action :create 
	collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.Arrest.PublicRecord' do 
	connection sql_server_connection_info
	type 'bit' 
	null false
	action :create 
	constraint  'DF_Arrest_PublicRecord'
	default '(0)'

end 


