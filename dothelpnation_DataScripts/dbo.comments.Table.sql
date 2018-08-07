USE [dothelpnation]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 07-Aug-18 1:58:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](155) NULL,
	[user_id] [int] NULL,
	[ad_id] [int] NULL,
	[name] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](50) NULL,
	[comment] [nvarchar](max) NULL,
	[date] [date] NULL,
	[time] [nvarchar](155) NULL,
 CONSTRAINT [PK__comments__3213E83FFE652CE6] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__type__5AEE82B9]  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__user_i__5BE2A6F2]  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__ad_id__5CD6CB2B]  DEFAULT (NULL) FOR [ad_id]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__name__5DCAEF64]  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__email__5EBF139D]  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__phone__5FB337D6]  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__date__60A75C0F]  DEFAULT (NULL) FOR [date]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__time__619B8048]  DEFAULT (NULL) FOR [time]
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD  CONSTRAINT [FK_comments_blog] FOREIGN KEY([ad_id])
REFERENCES [dbo].[blog] ([id])
GO
ALTER TABLE [dbo].[comments] CHECK CONSTRAINT [FK_comments_blog]
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD  CONSTRAINT [FK_comments_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[comments] CHECK CONSTRAINT [FK_comments_users]
GO
