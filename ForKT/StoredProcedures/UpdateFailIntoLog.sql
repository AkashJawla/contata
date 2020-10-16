CREATE PROCEDURE [dbo].[UpdateFailIntoLog](
	@LogKey int,
	@DataLoadStatus nvarchar(100)
	)
as
begin
	UPDATE LogTaskControlFlow_KTpurpose set
	EndTime = getdate(),
	DataLoadStatus = @DataLoadStatus
	where LogTaskControlFlowKey = @LogKey

	select @LogKey
end