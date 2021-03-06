/****** Object:  StoredProcedure [dbo].[insert_class]    Script Date: 5/18/2017 6:48:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Adds a class
-- =================================================
CREATE PROCEDURE [dbo].[insert_class]
	@track_id INT,
	@topic VARCHAR(100),
	@duration INT,
	@difficulty_level VARCHAR(50)

AS

BEGIN TRY

INSERT INTO class VALUES (@track_id, @topic, @duration, @difficulty_level)

END TRY

BEGIN CATCH

DECLARE @ErrorMessage NVARCHAR(4000);
DECLARE @ErrorSeverity INT;
DECLARE @ErrorState INT;

SELECT
	@ErrorMessage = ERROR_MESSAGE(),
	@ErrorSeverity = ERROR_SEVERITY(),
	@ErrorState = ERROR_STATE();

RAISERROR (@ErrorMessage,@ErrorSeverity,@ErrorState);

END CATCH




GO
