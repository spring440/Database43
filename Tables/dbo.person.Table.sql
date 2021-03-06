/****** Object:  Table [dbo].[person]    Script Date: 5/18/2017 6:46:28 AM ******/
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
ALTER TABLE [dbo].[person]  WITH NOCHECK ADD  CONSTRAINT [person_address_id_FK] FOREIGN KEY([address_id])
REFERENCES [dbo].[address] ([address_id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[person] NOCHECK CONSTRAINT [person_address_id_FK]
GO
