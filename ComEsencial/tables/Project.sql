CREATE TABLE Project (
  ProjectId  UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(),
  [Name] NVARCHAR(100) NOT NULL,
  ClientId UNIQUEIDENTIFIER NOT NULL,
  ProductId UNIQUEIDENTIFIER NOT NULL,
  OpportunityId UNIQUEIDENTIFIER NULL,
  StartDate date NOT NULL,
  EndDate date NOT NULL,
  InvoicedAmount INT NOT NULL,
  Cost INT NOT NULL,
  QuotedHours INT NOT NULL,
  WorkingHours INT NOT NULL,
  [Description] NVARCHAR(1500) NOT NULL,
  [State] BIT NOT NULL DEFAULT 1
)
GO
ALTER TABLE [dbo].[Project]
ADD FOREIGN KEY (OpportunityId) REFERENCES Opportunity(OpportunityId);
GO
ALTER TABLE [dbo].[Project]
ADD FOREIGN KEY (ProductId) REFERENCES Product(ProductId);
GO
ALTER TABLE [dbo].[Project]
ADD FOREIGN KEY (ClientId) REFERENCES Client(ClientId);
GO
