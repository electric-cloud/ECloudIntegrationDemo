USE [ecloudintegration_ref];

:OUT "C:\datical\ECloudIntegrationDemo\Resources\sql_scripts\20180308181702_change12.log"
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region12](
 [RegionID] [int] NOT NULL,
 [RegionDescription] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Region12] PRIMARY KEY NONCLUSTERED
(
 [RegionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

:OUT stdout
