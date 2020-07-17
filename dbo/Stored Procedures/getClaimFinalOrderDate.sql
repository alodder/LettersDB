
CREATE PROCEDURE [dbo].[getClaimFinalOrderDate] 
	@LicenseNumber int, 
	@ClaimNumber int
AS
BEGIN
	SET NOCOUNT ON;
	EXECUTE (
		'SELECT MAX(ACTION DATE) AS ORDER_DATE '+
		'FROM CLAIMS.ACTION '+
		'WHERE ACTION_CODE IN(''FO'',''FOA'',''ARBAF'',''DT'') '+
		'AND REGISTRATION_NUMBER = ? AND CLAIM_NUMBER = ?',
		@LicenseNumber, @ClaimNumber)
	AT ORACLEDB;
END