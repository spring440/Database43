/****** Object:  StoredProcedure [dbo].[insert_presentation]    Script Date: 5/18/2017 6:48:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Adds a presentation
-- =============================================
CREATE PROCEDURE [dbo].[insert_presentation] 
	@track_id INT,
	@title VARCHAR(100)
AS

BEGIN TRY

INSERT INTO presentation VALUES (@track_id, @title)

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
