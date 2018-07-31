USE [dothelpnation]
GO
/****** Object:  Table [dbo].[rating]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rating](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[post_id] [int] NULL,
	[user_id] [int] NULL,
	[stars] [int] NULL,
	[date] [date] NULL,
	[time] [varchar](15) NOT NULL,
 CONSTRAINT [PK__rating__3213E83F6DFC0A8C] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[rating] ADD  CONSTRAINT [DF__rating__post_id__4A8310C6]  DEFAULT (NULL) FOR [post_id]
GO
ALTER TABLE [dbo].[rating] ADD  CONSTRAINT [DF__rating__user_id__4B7734FF]  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[rating] ADD  CONSTRAINT [DF__rating__stars__4C6B5938]  DEFAULT (NULL) FOR [stars]
GO
ALTER TABLE [dbo].[rating] ADD  CONSTRAINT [DF__rating__date__4D5F7D71]  DEFAULT (NULL) FOR [date]
GO
