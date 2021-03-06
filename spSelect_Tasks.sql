USE [TodoList]
GO
/****** Object:  StoredProcedure [dbo].[Select_Tasks]    Script Date: 12/31/2021 7:47:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		sowens
-- Create date: 12/31/2021
-- Description:	Select list of Tasks
-- =============================================
CREATE PROCEDURE [dbo].[Select_Tasks]
	-- Add the parameters for the stored procedure here
	@des VARCHAR(225),
	@done BIT = 0

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT T.[Description],
		T.Done
	FROM Tasks AS T
	WHERE T.[Description] LIKE '%' + COALESCE(@des, T.[Description]) + '%'
		AND T.Done = COALESCE(@done, T.Done);

END
