﻿CREATE TABLE Task (
 TaskId UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(),
 Title NVARCHAR(500) NOT NULL,
 ProjectId UNIQUEIDENTIFIER NULL, 
 [Status] BIT NOT NULL DEFAULT 1
)
GO
ALTER TABLE [dbo].[Task]
ADD FOREIGN KEY (ProjectId) REFERENCES Project(ProjectId);
GO
