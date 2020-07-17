-- =============================================
-- Author:		Marty Graham
-- Create date: 2/8/2019
-- Description:	Executes the Oracle stored procedure (ENFORC.SP_WEB_PO)
-- =============================================
CREATE PROCEDURE EnforcWebPO 
	-- Add the parameters for the stored procedure here
	@inv_number int, 
	@userid varchar(30),
	@action_code varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	EXECUTE ('BEGIN ENFORC.SP_WEB_PO( P_INV_NO=> ?, P_USERID=> ?, P_CODE=> ?, P_DATE=>SYSDATE, P_AMOUNT=>NULL ); END;',
		@inv_number, 
		@userid, 
		@action_code)
	AT ORACLEDB;

END