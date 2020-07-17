CREATE TABLE [dbo].[Letter] (
    [LetterName]    VARCHAR (30)  NOT NULL,
    [SectionID]     NCHAR (2)     NULL,
    [LastEditUser]  NCHAR (20)    NULL,
    [LastEditDate]  DATETIME      NULL,
    [LetterContent] VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([LetterName] ASC)
);

