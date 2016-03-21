CREATE PROCEDURE [tSQLt].[AssertResultSetsHaveSameMetaData]
	@expectedCommand nvarchar(max),
	@actualCommand nvarchar(max)
AS
	EXTERNAL NAME [tSQLtCLR].[tSQLtCLR.StoredProcedures].[AssertResultSetsHaveSameMetaData]
GO
