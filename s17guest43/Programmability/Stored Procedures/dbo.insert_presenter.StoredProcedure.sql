/****** Object:  StoredProcedure [dbo].[insert_presenter]    Script Date: 5/18/2017 6:48:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Adds a presenter, class, and presentation
-- =============================================
CREATE PROCEDURE [dbo].[insert_presenter] 
	@person_id INT,
	@class_id INT,
	@presentation_id INT
AS

BEGIN TRY

INSERT INTO presenter VALUES (@person_id, @class_id, @presentation_id)

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
