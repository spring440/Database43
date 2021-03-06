/****** Object:  Table [dbo].[attendee]    Script Date: 5/18/2017 6:46:28 AM ******/
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
