-- Drop table
use IMDB_stage
DROP TABLE IF EXISTS stg_numbers_daily_box_office ;
CREATE TABLE stg_numbers_daily_box_office  (
	daily_box_office_sk int NOT NULL IDENTITY(1,1),

	Movie_Name varchar(255) not null,
	Show_Date datetime not null,
	Daily_Rank int null,
	Daily_Gross bigint null,
    Daily_Change_Pct decimal(10,3) null,
    Weekly_Change_Pct decimal(10,3) null,
	Number_of_Theaters int null,
	Gross_Per_Theater bigint null,
	Total_Gross bigint null,
	Number_of_Days int null,

	DI_JobID varchar(20) NOT NULL,
	DI_Create_DT datetime DEFAULT getdate() NOT NULL,
	PRIMARY KEY (daily_box_office_sk)
);

drop table if exists stg_numbers_frachise_movies_box_office
CREATE TABLE stg_numbers_frachise_movies_box_office  (
	frachise_movies_box_office_sk int NOT NULL IDENTITY(1,1),

	Franchise varchar(255) not null,
	Release_Date datetime not null,
	Movie_Name varchar(255) not null,
	Production_Budget bigint null,
	Opening_Weekend bigint null,
	Domestic_Box_Office bigint null,
	Worldwide_Box_Office bigint null,

	DI_JobID varchar(20) NOT NULL,
	DI_Create_DT datetime DEFAULT getdate() NOT NULL,
	PRIMARY KEY (frachise_movies_box_office_sk)
);

drop table if exists  stg_numbers_frachise_all_box_office
CREATE TABLE stg_numbers_frachise_all_box_office  (
	frachise_all_box_office_sk int NOT NULL IDENTITY(1,1),

	Franchise varchar(255) not null,
	No_of_Movies	int  not null,
	Domestic_Box_Office	bigint  not null,
	Infl_Adj_Dom_Box_Office	bigint  not null,
	Worldwide_Box_Office	bigint  not null,
	First_Year	int  not null,
	Last_Year	int  not null,
	No_of_Years	int not null,

	DI_JobID varchar(20) NOT NULL,
	DI_Create_DT datetime DEFAULT getdate() NOT NULL,
	PRIMARY KEY (frachise_all_box_office_sk)
);
