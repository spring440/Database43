/****** Object:  Table [dbo].[schedule]    Script Date: 5/18/2017 6:46:28 AM ******/
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
