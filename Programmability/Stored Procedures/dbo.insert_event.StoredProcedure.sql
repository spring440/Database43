/****** Object:  StoredProcedure [dbo].[insert_event]    Script Date: 5/18/2017 6:48:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Adds a event
-- =============================================
CREATE PROCEDURE [dbo].[insert_event] 
	@venue_id SMALLINT,
	@name TEXT,
	@date DATETIME
AS

BEGIN TRY

INSERT INTO event VALUES (@venue_id, @name, @date)

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
