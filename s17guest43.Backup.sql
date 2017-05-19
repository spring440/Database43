/****** Object:  Table [dbo].[address]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address](
	[address_id] [int] IDENTITY(1,1) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[state] [varchar](50) NOT NULL,
	[zip] [varchar](50) NOT NULL,
 CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[attendee]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attendee](
	[person_id] [int] NOT NULL,
	[event_id] [int] NOT NULL,
	[role_id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[class]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[class_id] [int] IDENTITY(1,1) NOT NULL,
	[track_id] [int] NOT NULL,
	[topic] [varchar](100) NOT NULL,
	[duration] [int] NOT NULL,
	[difficulty_level] [varchar](50) NOT NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[classroom]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classroom](
	[classroom_id] [int] IDENTITY(1,1) NOT NULL,
	[venue_id] [smallint] NOT NULL,
	[room_number] [varchar](50) NOT NULL,
	[occupancy] [int] NOT NULL,
 CONSTRAINT [PK_classroom] PRIMARY KEY CLUSTERED 
(
	[classroom_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[event]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event](
	[event_id] [int] IDENTITY(1,1) NOT NULL,
	[venue_id] [smallint] NOT NULL,
	[name] [text] NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_event] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[person]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person](
	[person_id] [int] IDENTITY(1,1) NOT NULL,
	[address_id] [int] NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[email_address] [varchar](50) NOT NULL,
 CONSTRAINT [PK_person] PRIMARY KEY CLUSTERED 
(
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[presentation]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[presentation](
	[presentation_id] [int] IDENTITY(1,1) NOT NULL,
	[track_id] [int] NULL,
	[title] [varchar](100) NOT NULL,
 CONSTRAINT [PK_presentations] PRIMARY KEY CLUSTERED 
(
	[presentation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[presentation_speaker]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[presentation_speaker](
	[presentation_speaker_id] [int] IDENTITY(1,1) NOT NULL,
	[presenter_id] [int] NOT NULL,
	[presentation_id] [int] NOT NULL,
 CONSTRAINT [PK_presentation_speaker] PRIMARY KEY CLUSTERED 
(
	[presentation_speaker_id] ASC,
	[presenter_id] ASC,
	[presentation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[presenter]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[presenter](
	[presenter_id] [int] IDENTITY(1,1) NOT NULL,
	[person_id] [int] NOT NULL,
	[class_id] [int] NOT NULL,
	[presentation_id] [int] NOT NULL,
 CONSTRAINT [PK_presenter] PRIMARY KEY CLUSTERED 
(
	[presenter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[role]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[schedule]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule](
	[schedule_id] [int] IDENTITY(1,1) NOT NULL,
	[class_id] [int] NOT NULL,
	[classroom_id] [int] NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_schedule] PRIMARY KEY CLUSTERED 
(
	[schedule_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[track]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[track](
	[track_id] [int] IDENTITY(1,1) NOT NULL,
	[topic] [text] NOT NULL,
 CONSTRAINT [PK_track] PRIMARY KEY CLUSTERED 
(
	[track_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[vendor]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vendor](
	[vendor_id] [int] IDENTITY(1,1) NOT NULL,
	[company_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_vendor] PRIMARY KEY CLUSTERED 
(
	[vendor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[vendor_table]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vendor_table](
	[vendor_table_id] [int] IDENTITY(1,1) NOT NULL,
	[vendor_id] [int] NOT NULL,
	[venue_id] [smallint] NOT NULL,
	[location] [varchar](50) NOT NULL,
 CONSTRAINT [PK_table] PRIMARY KEY CLUSTERED 
(
	[vendor_table_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[venue]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venue](
	[venue_id] [smallint] IDENTITY(1,1) NOT NULL,
	[name] [text] NOT NULL,
	[location] [varchar](50) NOT NULL,
 CONSTRAINT [PK_venue] PRIMARY KEY CLUSTERED 
(
	[venue_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[attendee]  WITH NOCHECK ADD  CONSTRAINT [attendees_event_id_fk] FOREIGN KEY([event_id])
REFERENCES [dbo].[event] ([event_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[attendee] NOCHECK CONSTRAINT [attendees_event_id_fk]
GO
ALTER TABLE [dbo].[attendee]  WITH NOCHECK ADD  CONSTRAINT [attendees_person_id_fk] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([person_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[attendee] NOCHECK CONSTRAINT [attendees_person_id_fk]
GO
ALTER TABLE [dbo].[attendee]  WITH NOCHECK ADD  CONSTRAINT [attendees_role_id_fk] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[attendee] NOCHECK CONSTRAINT [attendees_role_id_fk]
GO
ALTER TABLE [dbo].[class]  WITH NOCHECK ADD  CONSTRAINT [class_track_id_FK] FOREIGN KEY([track_id])
REFERENCES [dbo].[track] ([track_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[class] NOCHECK CONSTRAINT [class_track_id_FK]
GO
ALTER TABLE [dbo].[classroom]  WITH NOCHECK ADD  CONSTRAINT [classroom_venue_id_FK] FOREIGN KEY([venue_id])
REFERENCES [dbo].[venue] ([venue_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[classroom] NOCHECK CONSTRAINT [classroom_venue_id_FK]
GO
ALTER TABLE [dbo].[event]  WITH NOCHECK ADD  CONSTRAINT [event_venue_id_FK] FOREIGN KEY([venue_id])
REFERENCES [dbo].[venue] ([venue_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[event] NOCHECK CONSTRAINT [event_venue_id_FK]
GO
ALTER TABLE [dbo].[person]  WITH NOCHECK ADD  CONSTRAINT [person_address_id_FK] FOREIGN KEY([address_id])
REFERENCES [dbo].[address] ([address_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[person] NOCHECK CONSTRAINT [person_address_id_FK]
GO
ALTER TABLE [dbo].[presentation_speaker]  WITH CHECK ADD  CONSTRAINT [FK_presentation_speaker_presentation] FOREIGN KEY([presentation_id])
REFERENCES [dbo].[presentation] ([presentation_id])
GO
ALTER TABLE [dbo].[presentation_speaker] CHECK CONSTRAINT [FK_presentation_speaker_presentation]
GO
ALTER TABLE [dbo].[presentation_speaker]  WITH CHECK ADD  CONSTRAINT [FK_presentation_speaker_presenter] FOREIGN KEY([presenter_id])
REFERENCES [dbo].[presenter] ([presenter_id])
GO
ALTER TABLE [dbo].[presentation_speaker] CHECK CONSTRAINT [FK_presentation_speaker_presenter]
GO
ALTER TABLE [dbo].[presenter]  WITH NOCHECK ADD  CONSTRAINT [presenter_class_id_FK] FOREIGN KEY([class_id])
REFERENCES [dbo].[class] ([class_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[presenter] NOCHECK CONSTRAINT [presenter_class_id_FK]
GO
ALTER TABLE [dbo].[presenter]  WITH NOCHECK ADD  CONSTRAINT [presenter_person_id_FK] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([person_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[presenter] NOCHECK CONSTRAINT [presenter_person_id_FK]
GO
ALTER TABLE [dbo].[presenter]  WITH NOCHECK ADD  CONSTRAINT [presenter_presentation_id_FK] FOREIGN KEY([presentation_id])
REFERENCES [dbo].[presentation] ([presentation_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[presenter] NOCHECK CONSTRAINT [presenter_presentation_id_FK]
GO
ALTER TABLE [dbo].[schedule]  WITH NOCHECK ADD  CONSTRAINT [schedule_class_id_FK] FOREIGN KEY([class_id])
REFERENCES [dbo].[class] ([class_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[schedule] NOCHECK CONSTRAINT [schedule_class_id_FK]
GO
ALTER TABLE [dbo].[schedule]  WITH NOCHECK ADD  CONSTRAINT [schedule_classroom_id_FK] FOREIGN KEY([classroom_id])
REFERENCES [dbo].[classroom] ([classroom_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[schedule] NOCHECK CONSTRAINT [schedule_classroom_id_FK]
GO
ALTER TABLE [dbo].[vendor_table]  WITH NOCHECK ADD  CONSTRAINT [vendor_table_vendor_id_FK] FOREIGN KEY([vendor_id])
REFERENCES [dbo].[vendor] ([vendor_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[vendor_table] NOCHECK CONSTRAINT [vendor_table_vendor_id_FK]
GO
ALTER TABLE [dbo].[vendor_table]  WITH NOCHECK ADD  CONSTRAINT [vendor_table_venue_id_FK] FOREIGN KEY([venue_id])
REFERENCES [dbo].[venue] ([venue_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[vendor_table] NOCHECK CONSTRAINT [vendor_table_venue_id_FK]
GO
/****** Object:  StoredProcedure [dbo].[insert_address]    Script Date: 5/18/2017 6:45:13 AM ******/
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
/****** Object:  StoredProcedure [dbo].[insert_attendee]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Adds an attendee
-- =============================================
CREATE PROCEDURE [dbo].[insert_attendee] 
	@person_id INT,
	@event_id INT,
	@role_id INT
AS

BEGIN TRY

INSERT INTO attendee VALUES (@person_id, @event_id, @role_id)

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
/****** Object:  StoredProcedure [dbo].[insert_class]    Script Date: 5/18/2017 6:45:13 AM ******/
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
/****** Object:  StoredProcedure [dbo].[insert_classroom]    Script Date: 5/18/2017 6:45:13 AM ******/
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
/****** Object:  StoredProcedure [dbo].[insert_event]    Script Date: 5/18/2017 6:45:13 AM ******/
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
/****** Object:  StoredProcedure [dbo].[insert_person]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Adds a person
-- =============================================
CREATE PROCEDURE [dbo].[insert_person] 
	@address_id INT,
	@first_name VARCHAR(50),
	@last_name VARCHAR(50),
	@email_address VARCHAR(50)
AS

BEGIN TRY

INSERT INTO person VALUES (@address_id, @first_name, @last_name, @email_address)

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
/****** Object:  StoredProcedure [dbo].[insert_presentation]    Script Date: 5/18/2017 6:45:13 AM ******/
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
/****** Object:  StoredProcedure [dbo].[insert_presenter]    Script Date: 5/18/2017 6:45:13 AM ******/
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
/****** Object:  StoredProcedure [dbo].[insert_role]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Adds a role
-- =============================================
CREATE PROCEDURE [dbo].[insert_role] 
	@role_name VARCHAR(50)
AS

BEGIN TRY

INSERT INTO role VALUES (@role_name)

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
/****** Object:  StoredProcedure [dbo].[insert_schedule]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Adds a schedule
-- =================================================
CREATE PROCEDURE [dbo].[insert_schedule]
	@class_id INT,
	@classroom_id INT,
	@date DATETIME

AS

BEGIN TRY

INSERT INTO schedule VALUES (@class_id, @classroom_id, @date)

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
/****** Object:  StoredProcedure [dbo].[insert_track]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Adds a track
-- =============================================
CREATE PROCEDURE [dbo].[insert_track] 
	@topic TEXT
AS

BEGIN TRY

INSERT INTO track
	(topic)
VALUES
	(@topic)

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
/****** Object:  StoredProcedure [dbo].[insert_vendor]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Adds a vendor
-- =============================================
CREATE PROCEDURE [dbo].[insert_vendor] 
	@company_name VARCHAR(50)
AS

BEGIN TRY

INSERT INTO vendor VALUES (@company_name)

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
/****** Object:  StoredProcedure [dbo].[insert_vendor_table]    Script Date: 5/18/2017 6:45:13 AM ******/
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
/****** Object:  StoredProcedure [dbo].[insert_venue]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Adds a venue
-- =============================================
CREATE PROCEDURE [dbo].[insert_venue] 
	@name TEXT,
	@location VARCHAR(50)
AS

BEGIN TRY

INSERT INTO venue VALUES (@name, @location)

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
/****** Object:  StoredProcedure [dbo].[insertPresentation]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Adds a presenter and presentation
-- =============================================
CREATE PROCEDURE [dbo].[insertPresentation] 
	@presenter_id INT,
	@presentation_id INT
AS

BEGIN TRY

INSERT INTO presentation_speakers VALUES (@presenter_id, @presentation_id)

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
/****** Object:  StoredProcedure [dbo].[select_all_class_on_track]    Script Date: 5/18/2017 6:45:13 AM ******/
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
/****** Object:  StoredProcedure [dbo].[select_all_presentation_on_track]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Query all presentations based on track
-- =================================================
CREATE PROCEDURE [dbo].[select_all_presentation_on_track] 
AS
BEGIN TRY
	SELECT track.topic, presentation.title FROM track
	INNER JOIN presentation ON track.track_id=presentation.track_id
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
/****** Object:  StoredProcedure [dbo].[select_all_room_on_track]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Query all rooms based on track
-- ================================================
CREATE PROCEDURE [dbo].[select_all_room_on_track]
AS
BEGIN TRY
	SELECT track.topic,class.topic,classroom.room_number FROM class
	INNER JOIN track ON class.track_id=track.track_id
	INNER JOIN schedule ON class.class_id=schedule.class_id
	INNER JOIN classroom ON schedule.classroom_id=classroom.classroom_id
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
/****** Object:  StoredProcedure [dbo].[update_class_track]    Script Date: 5/18/2017 6:45:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================
-- Author:		Yu-Ting Tse
-- Create date: May 14, 2017
-- Description:	Updates the class's track
-- =================================================
CREATE PROCEDURE [dbo].[update_class_track] 
	@class_id INT,
	@track_id INT
AS
BEGIN TRY

UPDATE class SET track_id = @track_id WHERE class_id = @class_id

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
