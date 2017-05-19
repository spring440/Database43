/****** Object:  StoredProcedure [dbo].[insert_vendor_table]    Script Date: 5/18/2017 6:48:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Adds a vendor table
-- =============================================
CREATE PROCEDURE [dbo].[insert_vendor_table] 
	@vendor_id INT,
	@venue_id SMALLINT,
	@location VARCHAR(50)
AS

BEGIN TRY

INSERT INTO vendor_table VALUES (@vendor_id, @venue_id, @location)

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
