SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [tSQLt].[Private_RenamedObjectLog] (
		[Id]               [int] IDENTITY(1, 1) NOT NULL,
		[ObjectId]         [int] NOT NULL,
		[OriginalName]     [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK__Private_RenamedObjectLog__Id]
		PRIMARY KEY
		CLUSTERED
		([Id])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [tSQLt].[Private_RenamedObjectLog] SET (LOCK_ESCALATION = TABLE)
GO
