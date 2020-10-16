create proc InsertIntoFRM (
@FRM_UDT FRMLoad READONLY,
@LogKey int,
@DataLoadStatus nvarchar(100),
@FileName nvarchar(100)
)
as
begin

insert into FRM_KTpurpose
select *,@FileName
from @FRM_UDT


update LogTaskControlFlow_KTpurpose set
EndTime = getdate(),
DataLoadStatus = @DataLoadStatus
where LogTaskControlFlowKey = @LogKey

end

