/****** Object:  StoredProcedure [dbo].[insert_address]    Script Date: 5/18/2017 6:48:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Adds an address
-- =============================================
CREATE PROCEDURE [dbo].[insert_address] 
	@address VARCHAR(50),
	@city VARCHAR(50),
	@state VARCHAR(50),
	@zip VARCHAR(50)
AS

BEGIN TRY

INSERT INTO address VALUES (@address, @city, @state, @zip)

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
