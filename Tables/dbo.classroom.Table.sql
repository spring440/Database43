/****** Object:  Table [dbo].[classroom]    Script Date: 5/18/2017 6:46:28 AM ******/
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
ALTER TABLE [dbo].[classroom]  WITH NOCHECK ADD  CONSTRAINT [classroom_venue_id_FK] FOREIGN KEY([venue_id])
REFERENCES [dbo].[venue] ([venue_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[classroom] NOCHECK CONSTRAINT [classroom_venue_id_FK]
GO
