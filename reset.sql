-- create login
USE [master]
GO
CREATE LOGIN [datical_login] WITH PASSWORD=N'datical_login', DEFAULT_DATABASE=[ecloudintegration_ref], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
GRANT VIEW ANY DEFINITION TO datical_login
GO

-- create REF database and schema
CREATE DATABASE ecloudintegration_ref
GO

USE ecloudintegration_ref;
GO
CREATE SCHEMA tracking AUTHORIZATION dbo
GO


CREATE USER [datical_user] FOR LOGIN [datical_login]
GO
EXEC sp_addrolemember N'db_ddladmin', N'datical_user'
GO
EXEC sp_addrolemember N'db_datareader', N'datical_user'
GO
EXEC sp_addrolemember N'db_datawriter', N'datical_user'
GO
EXEC sp_addrolemember N'db_securityadmin', N'datical_user'
GO
EXEC sp_addrolemember N'db_backupoperator', N'datical_user'
GO
GRANT VIEW DATABASE STATE to [datical_user]
GO
ALTER SERVER ROLE [dbcreator] ADD MEMBER [datical_user]
GO
EXEC sp_addrolemember N'db_owner', N'datical_user'
GO

-- create DEV database and schema
CREATE DATABASE ecloudintegration_dev
GO

USE ecloudintegration_dev;
GO
CREATE SCHEMA tracking AUTHORIZATION dbo
GO

CREATE USER [datical_user] FOR LOGIN [datical_login]
GO
EXEC sp_addrolemember N'db_ddladmin', N'datical_user'
GO
EXEC sp_addrolemember N'db_datareader', N'datical_user'
GO
EXEC sp_addrolemember N'db_datawriter', N'datical_user'
GO
EXEC sp_addrolemember N'db_securityadmin', N'datical_user'
GO
EXEC sp_addrolemember N'db_backupoperator', N'datical_user'
GO
GRANT VIEW DATABASE STATE to [datical_user]
GO
ALTER SERVER ROLE [dbcreator] ADD MEMBER [datical_user]
GO
EXEC sp_addrolemember N'db_owner', N'datical_user'
GO