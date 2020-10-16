create proc InsertIntoLogTaskControllerFlow_KTpurpose (
@dataFactory nvarchar(127),
@pipeline NVARCHAR(127),
@startingActivity nvarchar(127),
@endingActivity nvarchar(127),
@schemaName nvarchar(15),
@mainEntityName nvarchar(127),
@groupID nvarchar(127),
@dataLoadStatus nvarchar(127),
@adfRunId nvarchar(63)
)
as
begin

insert into LogTaskControlFlow_KTpurpose(
DataFactory              
,Pipeline                 
,StartingActivity         
,EndingActivity           
,SchemaName               
,MainEntityName           
,GroupId
,DataLoadStatus
,AdfRunId

)
select 
@dataFactory ,
@pipeline,
@startingActivity,
@endingActivity,
@schemaName,
@mainEntityName,
@groupID,
@dataLoadStatus,
@adfRunId

--declare @key int
select cast(ident_current('dbo.LogTaskControlFlow_KTpurpose') as varchar(100)) logkey
--return @key
end

