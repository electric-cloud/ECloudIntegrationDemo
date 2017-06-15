USE [ecloudintegration_ref];

:OUT "C:\datical\ECloudIntegrationDemo\Resources\sql_scripts\20170615161552_change6.log"
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region5](
 [RegionID] [int] NOT NULL,
 [RegionDescription] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Region5] PRIMARY KEY NONCLUSTERED
(
 [RegionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

:OUT stdout
