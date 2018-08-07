USE [dothelpnation]
GO
/****** Object:  Table [dbo].[rating]    Script Date: 07-Aug-18 1:58:56 AM ******/
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
	[time] [nvarchar](15) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[rating] ADD  CONSTRAINT [DF__rating__post_id__02084FDA]  DEFAULT (NULL) FOR [post_id]
GO
ALTER TABLE [dbo].[rating] ADD  CONSTRAINT [DF__rating__user_id__02FC7413]  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[rating] ADD  CONSTRAINT [DF__rating__stars__03F0984C]  DEFAULT (NULL) FOR [stars]
GO
ALTER TABLE [dbo].[rating] ADD  CONSTRAINT [DF__rating__date__04E4BC85]  DEFAULT (NULL) FOR [date]
GO
ALTER TABLE [dbo].[rating]  WITH CHECK ADD  CONSTRAINT [FK_rating_blog] FOREIGN KEY([post_id])
REFERENCES [dbo].[blog] ([id])
GO
ALTER TABLE [dbo].[rating] CHECK CONSTRAINT [FK_rating_blog]
GO
ALTER TABLE [dbo].[rating]  WITH CHECK ADD  CONSTRAINT [FK_rating_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[rating] CHECK CONSTRAINT [FK_rating_users]
GO
