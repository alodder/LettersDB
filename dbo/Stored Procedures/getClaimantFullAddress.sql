﻿-- =============================================
-- Author:		GRAHAMM
-- Create date: 19-DEC-2019
-- =============================================
CREATE PROCEDURE [dbo].[getClaimantFullAddress] 
	@LicenseNumber int, 
	@ClaimNumber int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	EXECUTE (
		'SELECT C_ADDRESS, C_CITY, C_STATE, C_ZIP FROM CLAIMS.V_DRS_CORRESPONDENCE WHERE REGISTRATION_NUMBER = ? AND CLAIM_NUMBER = ?',
		@LicenseNumber, @ClaimNumber)
	AT ORACLEDB;
END