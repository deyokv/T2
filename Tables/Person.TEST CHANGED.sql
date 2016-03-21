SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [Person].[TEST CHANGED] (
		[AddressID]           [int] IDENTITY(1, 1) NOT FOR REPLICATION NOT NULL,
		[AddressLine1]        [nvarchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AddressLine2]        [nvarchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[City]                [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[StateProvinceID]     [int] NOT NULL,
		[PostalCode]          [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SpatialLocation]     [geography] NULL,
		[rowguid]             [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]        [datetime] NOT NULL,
		CONSTRAINT [PK_Address_AddressID]
		PRIMARY KEY
		CLUSTERED
		([AddressID])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'CONSTRAINT', N'PK_Address_AddressID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'INDEX', N'PK_Address_AddressID'
GO
ALTER TABLE [Person].[TEST CHANGED]
	ADD
	CONSTRAINT [DF_Address_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'CONSTRAINT', N'DF_Address_ModifiedDate'
GO
ALTER TABLE [Person].[TEST CHANGED]
	ADD
	CONSTRAINT [DF_Address_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'CONSTRAINT', N'DF_Address_rowguid'
GO
ALTER TABLE [Person].[TEST CHANGED]
	WITH CHECK
	ADD CONSTRAINT [FK_Address_StateProvince_StateProvinceID]
	FOREIGN KEY ([StateProvinceID]) REFERENCES [Person].[StateProvince] ([StateProvinceID])
ALTER TABLE [Person].[TEST CHANGED]
	CHECK CONSTRAINT [FK_Address_StateProvince_StateProvinceID]

GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing StateProvince.StateProvinceID.', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'CONSTRAINT', N'FK_Address_StateProvince_StateProvinceID'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Address_rowguid]
	ON [Person].[TEST CHANGED] ([rowguid])
	ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'INDEX', N'AK_Address_rowguid'
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode]
	ON [Person].[TEST CHANGED] ([AddressLine1], [AddressLine2], [City], [StateProvinceID], [PostalCode])
	ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'INDEX', N'IX_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode'
GO
CREATE NONCLUSTERED INDEX [IX_Address_StateProvinceID]
	ON [Person].[TEST CHANGED] ([StateProvinceID])
	ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'INDEX', N'IX_Address_StateProvinceID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for Address records.', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'COLUMN', N'AddressID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'First street address line.', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'COLUMN', N'AddressLine1'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Second street address line.', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'COLUMN', N'AddressLine2'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name of the city.', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'COLUMN', N'City'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'COLUMN', N'ModifiedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Postal code for the street address.', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'COLUMN', N'PostalCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'COLUMN', N'rowguid'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Latitude and longitude of this address.', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'COLUMN', N'SpatialLocation'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique identification number for the state or province. Foreign key to StateProvince table.', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', 'COLUMN', N'StateProvinceID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Street address information for customers, employees, and vendors.', 'SCHEMA', N'Person', 'TABLE', N'TEST CHANGED', NULL, NULL
GO
ALTER TABLE [Person].[TEST CHANGED] SET (LOCK_ESCALATION = TABLE)
GO