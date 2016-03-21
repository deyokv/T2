CREATE PROCEDURE [tSQLt].[CaptureOutput]
	@command nvarchar(max)
AS
	EXTERNAL NAME [tSQLtCLR].[tSQLtCLR.StoredProcedures].[CaptureOutput]
GO
