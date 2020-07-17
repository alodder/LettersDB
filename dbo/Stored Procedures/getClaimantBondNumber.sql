
CREATE PROCEDURE [dbo].[getClaimantBondNumber] 
	@LicenseNumber int, 
	@ClaimNumber int
AS
BEGIN
	SET NOCOUNT ON;
	EXECUTE (
		'SELECT BOND_NUMBER FROM CLAIMS.BOND WHERE REGISTRATION_NUMBER = ? AND CLAIM_NUMBER = ?',
		@LicenseNumber, @ClaimNumber)
	AT ORACLEDB;
END