﻿CREATE TABLE [dbo].[PRINTDATA] (
    [PRINTDATE]           DATE           NULL,
    [ENTRYDATE]           DATE           NOT NULL,
    [LETTERDATA]          VARCHAR (MAX)  NOT NULL,
    [SECTION]             INT            NOT NULL,
    [LETTERCODE]          NCHAR (20)     NULL,
    [ACTIONCODE]          NCHAR (10)     NULL,
    [ACTIONCODE_COMMENTS] NVARCHAR (50)  NULL,
    [ACTIONCODE_DOLLAR]   NCHAR (10)     CONSTRAINT [DF_PRINTDATA_ACTIONCODE_DOLLAR] DEFAULT ((0)) NULL,
    [TEMPLATE]            NCHAR (30)     NULL,
    [QUESTYS]             NCHAR (10)     NULL,
    [RECORD]              NCHAR (20)     NULL,
    [LETTERNAME]          NVARCHAR (50)  NULL,
    [USERID]              NCHAR (10)     NULL,
    [PKEY]                INT            IDENTITY (1, 1) NOT NULL,
    [BARCODE]             NVARCHAR (MAX) NULL,
    [PRINTCOPIES]         INT            NULL,
    PRIMARY KEY CLUSTERED ([PKEY] ASC)
);




GO
CREATE NONCLUSTERED INDEX [IX_PrintData_Section_Template_Includes]
    ON [dbo].[PRINTDATA]([SECTION] ASC, [TEMPLATE] ASC)
    INCLUDE([PRINTDATE], [ENTRYDATE], [LETTERDATA], [LETTERCODE], [ACTIONCODE], [ACTIONCODE_COMMENTS], [ACTIONCODE_DOLLAR], [QUESTYS], [RECORD], [LETTERNAME], [USERID], [PKEY], [BARCODE], [PRINTCOPIES]);


GO
CREATE NONCLUSTERED INDEX [KEY]
    ON [dbo].[PRINTDATA]([PRINTDATE] ASC);


GO
CREATE STATISTICS [St_PRINTDATA_Record_EntryDate_section]
    ON [dbo].[PRINTDATA]([RECORD], [ENTRYDATE], [SECTION]);


GO
CREATE STATISTICS [St_PRINTDATA_Section_Template_Pkey]
    ON [dbo].[PRINTDATA]([SECTION], [TEMPLATE], [PKEY]);


GO
CREATE STATISTICS [St_PRINTDATA_Pkey_Section]
    ON [dbo].[PRINTDATA]([PKEY], [SECTION]);


GO
CREATE STATISTICS [St_PRINTDATA_EntryDate]
    ON [dbo].[PRINTDATA]([SECTION], [ENTRYDATE]);
