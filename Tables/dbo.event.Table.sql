/****** Object:  Table [dbo].[event]    Script Date: 5/18/2017 6:46:28 AM ******/
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
ALTER TABLE [dbo].[event]  WITH NOCHECK ADD  CONSTRAINT [event_venue_id_FK] FOREIGN KEY([venue_id])
REFERENCES [dbo].[venue] ([venue_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[event] NOCHECK CONSTRAINT [event_venue_id_FK]
GO
