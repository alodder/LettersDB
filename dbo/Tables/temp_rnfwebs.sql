CREATE TABLE [dbo].[temp_rnfwebs] (
    [pkey]                INT            NOT NULL,
    [printdate]           DATE           NULL,
    [entrydate]           DATE           NOT NULL,
    [letterdata]          VARCHAR (MAX)  NOT NULL,
    [section]             INT            NOT NULL,
    [lettercode]          NCHAR (20)     NULL,
    [actioncode]          NCHAR (10)     NULL,
    [actioncode_comments] NVARCHAR (50)  NULL,
    [actioncode_dollar]   NCHAR (10)     NULL,
    [template]            NCHAR (30)     NULL,
    [questys]             NCHAR (10)     NULL,
    [record]              NCHAR (20)     NULL,
    [lettername]          NVARCHAR (50)  NULL,
    [userid]              NCHAR (10)     NULL,
    [printcopies]         INT            NULL,
    [name]                NVARCHAR (50)  NOT NULL,
    [path]                NVARCHAR (100) NULL,
    [barcode]             NVARCHAR (MAX) NULL,
    [id]                  INT            IDENTITY (1, 1) NOT NULL
);



