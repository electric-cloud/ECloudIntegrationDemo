USE [ecloudintegration_ref];

:OUT "C:\apps\Jenkins\jobs\LR_CI_Packaging\workspace\ECloudIntegrationDemo\Resources\sql_scripts\20170530151505_schema_MSSQL_GloboFace2.log"
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] PRIMARY KEY NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[HomePhone] [nvarchar](24) NULL,
	[Extension] [nvarchar](4) NULL
)
GO

:OUT stdout
