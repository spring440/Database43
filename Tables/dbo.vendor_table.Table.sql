/****** Object:  Table [dbo].[vendor_table]    Script Date: 5/18/2017 6:46:28 AM ******/
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
