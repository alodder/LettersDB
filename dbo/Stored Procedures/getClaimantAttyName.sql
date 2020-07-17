-- =============================================
-- Author:		GRAHAMM
-- Create date: 19-DEC-2019
-- =============================================
CREATE PROCEDURE [dbo].[getClaimantAttyName] 
	@LicenseNumber int, 
	@ClaimNumber int
AS
BEGIN
	SET NOCOUNT ON;
	EXECUTE (
		'SELECT C_ATTY_NAME FROM CLAIMS.V_DRS_CORRESPONDENCE WHERE REGISTRATION_NUMBER = ? AND CLAIM_NUMBER = ?',
		@LicenseNumber, @ClaimNumber)
	AT ORACLEDB;
END