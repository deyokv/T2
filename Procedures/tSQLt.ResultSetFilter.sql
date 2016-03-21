CREATE PROCEDURE [tSQLt].[ResultSetFilter]
	@ResultsetNo [int],
	@Command nvarchar(max)
AS
	EXTERNAL NAME [tSQLtCLR].[tSQLtCLR.StoredProcedures].[ResultSetFilter]
GO
