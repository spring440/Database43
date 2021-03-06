/****** Object:  Table [dbo].[presentation]    Script Date: 5/18/2017 6:46:28 AM ******/
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
