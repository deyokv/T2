CREATE PROCEDURE [tSQLt].[NewConnection]
	@command nvarchar(max)
AS
	EXTERNAL NAME [tSQLtCLR].[tSQLtCLR.StoredProcedures].[NewConnection]
GO
