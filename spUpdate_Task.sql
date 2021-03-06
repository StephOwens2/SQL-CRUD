USE [TodoList]
GO
/****** Object:  StoredProcedure [dbo].[Update_Task]    Script Date: 12/31/2021 7:47:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		sowens
-- Create date: 12/31/2021
-- Description:	Update Task
-- =============================================
CREATE PROCEDURE [dbo].[Update_Task]
	-- Add the parameters for the stored procedure here
	@id INT,
	@des VARCHAR(225),
	@done BIT = 0

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE dbo.Tasks
	SET [Description] = ISNULL(@des,[Description]),
		Done = ISNULL(@done, Done)
	WHERE Task_ID = @id; 

END
