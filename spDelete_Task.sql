/****** Object:  StoredProcedure [dbo].[Delete_Task]    Script Date: 12/31/2021 7:47:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		sowens
-- Create date: 12/31/2021
-- Description:	Delete Task
-- =============================================
CREATE PROCEDURE [dbo].[Delete_Task]
	-- Add the parameters for the stored procedure here
	@id INT

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE FROM dbo.Tasks
	WHERE Task_ID = @id; 

END
