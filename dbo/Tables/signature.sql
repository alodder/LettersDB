CREATE TABLE [dbo].[signature] (
    [id]          INT           IDENTITY (1, 1) NOT NULL,
    [name]        VARCHAR (30)  NULL,
    [title]       VARCHAR (30)  NULL,
    [phonenumber] VARCHAR (30)  NULL,
    [email]       VARCHAR (50)  NULL,
    [userid]      VARCHAR (20)  NULL,
    [sectionid]   INT           NULL,
    [security]    INT           NULL,
    [initials]    VARCHAR (4)   NULL,
    [base64image] VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);



