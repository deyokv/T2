CREATE PROCEDURE [tSQLt].[SuppressOutput]
	@command nvarchar(max)
AS
	EXTERNAL NAME [tSQLtCLR].[tSQLtCLR.StoredProcedures].[SuppressOutput]
GO
