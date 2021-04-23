CREATE TABLE Opportunity(
	OpportunityId UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(),
	ClientId UNIQUEIDENTIFIER NOT NULL,
	CampaignId UNIQUEIDENTIFIER NULL,
	[Description] NVARCHAR(50) NOT NULL,
	OpportunityInputId UNIQUEIDENTIFIER NOT NULL,
    [State] BIT NOT NULL DEFAULT 1
	)
	GO;
ALTER TABLE [dbo].[Opportunity]
ADD FOREIGN KEY (ClientId) REFERENCES Client(ClientId);
GO;
ALTER TABLE [dbo].[Opportunity]
ADD FOREIGN KEY (CampaignId) REFERENCES Campaign(CampaignId);
GO;
ALTER TABLE [dbo].[Opportunity]
ADD FOREIGN KEY (OpportunityInputId) REFERENCES OpportunityInput(OpportunityInputId);
GO;