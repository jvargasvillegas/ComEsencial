﻿CREATE TABLE [dbo].[OpportunityInput]
(
	[OpportunityInputId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NewID(), 
    [Name] NVARCHAR(50) NOT NULL
)
