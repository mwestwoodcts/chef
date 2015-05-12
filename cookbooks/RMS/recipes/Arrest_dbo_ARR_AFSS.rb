sql_server_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['sql_server']['port'],
  :username => 'sa',
  :password => node['sql_server']['server_sa_password']
}

sql_server_database_table 'ARR_AFSS' do 
  connection sql_server_connection_info
  database_name 'Arrest'
  schema_name 'dbo' 
  action  :create
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.BEGIN' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '10'
  null true
  constraint  'DF_ARR_AFSS_BEGIN'
  description 'Not used'
  collate  'SQL_Latin1_General_CP1_CI_AS'
  action :create 
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ARRESTNO' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '15'
  null true
  action :create 
  constraint  'DF_ARR_AFSS_ARRESTNO'
  description 'Arrest Number'
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ARRESTNOB' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '15'
  null true
  action :create 
  constraint  'DF_ARR_AFSS_ARRESTNOB'
  description 'Arrest Number Backup'
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.CHARGENUM' do 
  connection sql_server_connection_info
  type 'int' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_CHARGENUM'
  default '(0)'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.GOC' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '1'
  null true
  action :create 
  constraint  'DF_ARR_AFSS_GOC'
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ACL' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '1'
  null true
  action :create 
  constraint  'DF_ARR_AFSS_ACL'
  
  collate  'SQL_Latin1_General_CP1_CI_AS'

end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ACD' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '1'
  null true
  action :create 
  constraint  'DF_ARR_AFSS_ACD' 
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.AON' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '4'
  null true
  action :create 
  constraint  'DF_ARR_AFSS_AON'
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.FSN' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '30'
  null true
  action :create 
  constraint  'DF_ARR_AFSS_FSN' 
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.COUNTS' do 
  connection sql_server_connection_info
  type 'smallint' 
  null true
  action :create 
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.FCICCODEV' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '40'
  null true
  action :create 
  constraint  'DF_ARR_AFSS_FCICCODEV' 
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.FSDESC' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '200'
  null true
  action :create 
  constraint  'DF_ARR_AFSS_FSDESC' 
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ADN' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '3'
  null true
  action :create 
  constraint  'DF_ARR_AFSS_ADN' 
  description 'ADN'
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.DV' do 
  connection sql_server_connection_info
  type 'bit' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_DV'
  default '(0)'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.HC' do 
  connection sql_server_connection_info
  type 'bit' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_HC'
  default '(0)'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.UCR' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '4'
  null true
  action :create 
  constraint  'DF_ARR_AFSS_UCR' 
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.NCIC' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '4'
  null true
  action :create 
  constraint  'DF_ARR_AFSS_NCIC' 
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.END' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '10'
  null true
  action :create 
  constraint  'DF_ARR_AFSS_END' 
  description 'Not used'
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.UCRTYPE' do 
  connection sql_server_connection_info
  type 'int' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_UCRTYPE'
  default '(0)'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.NIBRSTYPE' do 
  connection sql_server_connection_info
  type 'int' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_NIBRSTYPE'
  default '(0)'
  description 'NIBRS Type'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.PRIORITY' do 
  connection sql_server_connection_info
  type 'int' 
  null true
  action :create 
  description 'Priority'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.CriminalGangActivity1' do 
  connection sql_server_connection_info
  type 'int' 
  null true
  action :create 
  description 'Criminal Gang Activity 1'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.CriminalGangActivity2' do 
  connection sql_server_connection_info
  type 'int' 
  null true
  action :create 
  description 'Criminal Gang Activity 2'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.CriminalGangActivity3' do 
  connection sql_server_connection_info
  type 'int' 
  null true
  action :create 
  description 'Criminal Gang Activity 3'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.LocationType' do 
  connection sql_server_connection_info
  type 'int' 
  null true
  action :create 
  description 'Location Type'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.UNIQUEKEY' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '22'
  null false
  action :create 
  description 'Primary key for the record'
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.FS' do 
  connection sql_server_connection_info
  type 'bit' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_FS'
  default '(0)'
  description 'True if the violation is a Florida State Statute'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ORD' do 
  connection sql_server_connection_info
  type 'bit' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_ORD'
  default '(0)'
  description 'True if the violation is a local ordinance'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ATTY_NO' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '15'
  null true
  action :create 
  description 'Attorney number'
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.COURT_NO' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '25'
  null true
  action :create 
  description 'Court number'
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.CITATION' do 
  connection sql_server_connection_info
  type 'bit' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_CITATION'
  default '(0)'
  description 'True if the arrest report is a citation'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.WRITATT' do 
  connection sql_server_connection_info
  type 'bit' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_WRITATT'
  default '(0)'
  description 'True if the arrest report is writ attempt'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.DOM_VIO_INJ' do 
  connection sql_server_connection_info
  type 'bit' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_DOM_VIO_INJ'
  default '(0)'
  description 'True if the arrest report involves a domestic violence injury'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ORDER_ARR' do 
  connection sql_server_connection_info
  type 'bit' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_ORDER_ARR'
  default '(0)'
  description 'True if the arrest report is a order of arrest'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.XMITSORTDATE' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '19'
  null true
  action :create 
  description 'Transmitted Sort Date'
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ARR_INDICATE' do 
  connection sql_server_connection_info
  type 'int' 
  null true
  action :create 
  description 'Indicate of an arrest'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.PC' do 
  connection sql_server_connection_info
  type 'bit' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_PC'
  default '(0)'
  description 'True if there is probable cause'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.CAPIAS' do 
  connection sql_server_connection_info
  type 'bit' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_CAPIAS'
  default '(0)'
  description 'True if the suspect should be arrested'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.AC' do 
  connection sql_server_connection_info
  type 'bit' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_AC'
  default '(0)'
  description 'True if the arrest report is for an affidavit for complaint'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.BW' do 
  connection sql_server_connection_info
  type 'bit' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_BW'
  default '(0)'
  description 'True if the arrest report is for a bench warrant'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.FW' do 
  connection sql_server_connection_info
  type 'bit' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_FW'
  default '(0)'
  description 'True if the arrest report is for a federal warrant'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.PW' do 
  connection sql_server_connection_info
  type 'bit' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_PW'
  default '(0)'
  description 'True if the arrest report is for a parole warrant'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.JUVPU' do 
  connection sql_server_connection_info
  type 'bit' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_JUVPU'
  default '(0)'
  description 'True if the arrest report is a juvenile parole'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ACTIVITY' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '1'
  null true
  action :create 
  description 'Activity of a drug suspect'
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.DRUGTYPE' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '1'
  null true
  action :create 
  description 'Drug type the suspect was selling'
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.AMOUNT' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '30'
  null true
  action :create 
  description 'Amount of the drug type suspect had '
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.SECTION' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '15'
  null true
  action :create 
  description 'Section number of the law'
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.TRANSMITTED' do 
  connection sql_server_connection_info
  type 'bit' 
  null true
  action :create 
  constraint  'DF_ARR_AFSS_TRANSMITTED'
  default '(0)'
  description 'True if the report has been transmitted'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.DATE_ISSUED' do 
  connection sql_server_connection_info
  type 'datetime' 
  null true
  action :create 
  description 'Date the report was issued'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.BONDAMT' do 
  connection sql_server_connection_info
  type 'money' 
  null true
  action :create 
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.FSS_RecNo' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '10'
  null true
  action :create 
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ArrestReportUniqueFKey' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '22'
  null true
  action :create 
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.CargoTheft' do 
  connection sql_server_connection_info
  type 'bit' 
  null false
  action :create 
  constraint  'DF_ARR_AFSS_CargoTheft'
  default '(0)'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.MentalHealth' do 
  connection sql_server_connection_info
  type 'bit' 
  null false
  action :create 
  constraint  'DF_ARR_AFSS_MentalHealth'
  default '(0)'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.WarrantNo' do 
  connection sql_server_connection_info
  type 'varchar' 
  size '15'
  null true
  action :create 
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 

sql_server_database_column 'Arrest.dbo.ARR_AFSS.ChargeProbableCause' do 
  connection sql_server_connection_info
  type 'varchar' 
  size 'max'
  null true
  action :create 
  collate  'SQL_Latin1_General_CP1_CI_AS'
end 