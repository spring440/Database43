/****** Object:  StoredProcedure [dbo].[insert_classroom]    Script Date: 5/18/2017 6:48:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Adds a classroom
-- =============================================
CREATE PROCEDURE [dbo].[insert_classroom] 
	@venue_id SMALLINT,
	@room_number VARCHAR(50),
	@occupancy INT
AS

BEGIN TRY

INSERT INTO classroom VALUES (@venue_id, @room_number, @occupancy)

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
