/****** Object:  StoredProcedure [dbo].[select_all_class_on_track]    Script Date: 5/18/2017 6:48:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Query all classes based on track
-- =================================================
CREATE PROCEDURE [dbo].[select_all_class_on_track] 
AS
BEGIN TRY
	SELECT track.topic,class.topic,last_name FROM class
	INNER JOIN track ON class.track_id=track.track_id
	INNER JOIN presenter ON presenter.class_id=class.class_id
	INNER JOIN person ON presenter.person_id=person.person_id
	ORDER BY track.track_id ASC
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
