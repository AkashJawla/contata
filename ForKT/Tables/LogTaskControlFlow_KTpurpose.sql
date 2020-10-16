CREATE TABLE [dbo].[LogTaskControlFlow_KTpurpose]
(
    LogTaskControlFlowKey            BIGINT IDENTITY(1, 1) NOT NULL
    ,StartTime                        DATETIME CONSTRAINT [df_LogTaskControlFlow_StartTime] DEFAULT GETDATE()
    ,EndTime                        DATETIME
    ,DataFactory                    NVARCHAR(127)
    ,Pipeline                        NVARCHAR(127)
    ,StartingActivity                NVARCHAR(127)
    ,EndingActivity                    NVARCHAR(127)
    ,SchemaName                        NVARCHAR(15)
    ,MainEntityName                    NVARCHAR(127)
    ,TotalRowsFromSource            INT CONSTRAINT [df_LogTaskControlFlow_TotalRowsFromSource] DEFAULT 0
    ,TotalRowsFailed                INT CONSTRAINT [df_LogTaskControlFlow_TotalRowsFailed] DEFAULT 0
    ,TotalRowsInserted                INT CONSTRAINT [df_LogTaskControlFlow_TotalRowsInserted] DEFAULT 0
    ,TotalRowsUpdated                INT CONSTRAINT [df_LogTaskControlFlow_TotalRowsUpdated] DEFAULT 0
    ,GroupId                        BIGINT
    ,AdfRunId                        NVARCHAR(63)
    ,DataLoadStatus                    NVARCHAR(31) CONSTRAINT [df_LogTaskControlFlow_DataLoadStatus] DEFAULT 'Success'
    ,ErrorMessage                    NVARCHAR(MAX)
    ,[ErrorFile]                    NVARCHAR(1023)
    ,[Remarks]                        NVARCHAR(1023)
    ,CONSTRAINT PK_LogTaskControlFlow_LogTaskControlFlowKey PRIMARY KEY(LogTaskControlFlowKey)
);

 

GO

 

CREATE NONCLUSTERED INDEX [Idx_LogTaskControlFlow_AdfRunId]
    ON LogTaskControlFlow_KTpurpose(AdfRunId ASC);
