-- =============================================
-- Author:		GRAHAMM
-- Create date: 19-DEC-2019
-- =============================================
CREATE PROCEDURE [dbo].[getRespondentZip] 
	@LicenseNumber int, 
	@ClaimNumber int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	EXECUTE (
		'SELECT R_ZIP FROM CLAIMS.V_DRS_CORRESPONDENCE WHERE REGISTRATION_NUMBER = ? AND CLAIM_NUMBER = ?',
		@LicenseNumber, @ClaimNumber)
	AT ORACLEDB;
END