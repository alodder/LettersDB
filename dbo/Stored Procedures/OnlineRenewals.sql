-- =============================================
-- Author:		GRAHAMM
-- Create date: 13-NOV-2018
-- Description:	Online Renewal Correspondence Summaries
-- =============================================
CREATE PROCEDURE [dbo].[OnlineRenewals] 
	@p_startdate datetime, 
	@p_enddate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT PKEY,
           ENTRYDATE AS ENTRY_DATE,
           RTRIM(RECORD) AS LICENSE,
           RTRIM(LETTERNAME) AS LETTER_NAME,
           LETTERDATA 
      FROM LETTERS_V2_BETA.DBO.PRINTDATA 
     WHERE SECTION = -3 AND 
           ENTRYDATE BETWEEN @p_startdate AND @p_enddate
     ORDER BY 
           ENTRYDATE ASC, 
           CAST(SUBSTRING(RECORD,1,CHARINDEX(' ',RECORD)) AS INT) ASC
END
GO
GRANT VIEW DEFINITION
    ON OBJECT::[dbo].[OnlineRenewals] TO [report]
    AS [dbo];


GO
GRANT EXECUTE
    ON OBJECT::[dbo].[OnlineRenewals] TO [report]
    AS [dbo];

