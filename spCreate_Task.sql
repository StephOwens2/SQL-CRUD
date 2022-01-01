-- ================================================
--Update a Task
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		sowens
-- Create date: 12/31/2021
-- Description:	Update Task
-- =============================================
CREATE PROCEDURE Update_Task
	-- Add the parameters for the stored procedure here
	@des VARCHAR(225),
	@done BIT = 0

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO dbo.Tasks (
		[Description], 
		Done
	)

	VALUES (
		@des, 
		@done
	)

END