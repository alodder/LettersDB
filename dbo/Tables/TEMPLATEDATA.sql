CREATE TABLE [dbo].[TEMPLATEDATA] (
    [SECTION] INT            NOT NULL,
    [NAME]    NVARCHAR (50)  NOT NULL,
    [PATH]    NVARCHAR (100) NULL,
    [WEBPATH] NVARCHAR (100) NULL,
    [id]      INT            IDENTITY (1, 1) NOT NULL
);



