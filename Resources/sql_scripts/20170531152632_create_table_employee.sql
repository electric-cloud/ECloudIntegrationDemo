USE [ecloudintegration_ref];

:OUT "C:\apps\Jenkins\jobs\LR_CI_Packaging\workspace\ECloudIntegrationDemo\Resources\sql_scripts\20170531152632_create_table_employee.log"
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
  [EmployeeID] [int] IDENTITY(1,1) NOT NULL,
  [LastName] [nvarchar](20) NOT NULL,
  [FirstName] [nvarchar](10) NOT NULL,
  [Title] [nvarchar](30) NULL,
  [TitleOfCourtesy] [nvarchar](25) NULL,
  [BirthDate] [datetime] NULL,
  [HireDate] [datetime] NULL,
  [Address] [nvarchar](60) NULL,
  [City] [nvarchar](15) NULL,
  [Region] [nvarchar](15) NULL,
  [PostalCode] [nvarchar](10) NULL,
  [Country] [nvarchar](15) NULL,
  [HomePhone] [nvarchar](24) NULL,
  [Extension] [nvarchar](4) NULL,
  [Photo] [image] NULL,
  [Notes] [ntext] NULL,
  [ReportsTo] [int] NULL,
  [PhotoPath] [nvarchar](255) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED
(
  [EmployeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

:OUT stdout
