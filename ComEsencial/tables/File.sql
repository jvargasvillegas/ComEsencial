﻿CREATE TABLE [dbo].[File]
(
	[FileId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(),
	[Name] NVARCHAR(250) NOT NULL
)