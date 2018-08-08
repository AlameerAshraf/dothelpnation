USE [dothelpnation]
GO
/****** Object:  Table [dbo].[ads_messages]    Script Date: 07-Aug-18 1:58:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ads_messages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](155) NULL,
	[parent_id] [int] NULL,
	[ad_id] [int] NULL,
	[from_user_id] [int] NULL,
	[to_user_id] [int] NULL,
	[title] [nvarchar](255) NULL,
	[info] [nvarchar](max) NULL,
	[stuts] [int] NOT NULL,
	[date] [date] NULL,
	[time] [nvarchar](155) NULL,
 CONSTRAINT [PK__ads_mess__3213E83F8E1D9A34] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messag__type__47DBAE45]  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__paren__48CFD27E]  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__ad_id__49C3F6B7]  DEFAULT (NULL) FOR [ad_id]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__from___4AB81AF0]  DEFAULT (NULL) FOR [from_user_id]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__to_us__4BAC3F29]  DEFAULT (NULL) FOR [to_user_id]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__title__4CA06362]  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__stuts__4D94879B]  DEFAULT ('0') FOR [stuts]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messag__date__4E88ABD4]  DEFAULT (NULL) FOR [date]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messag__time__4F7CD00D]  DEFAULT (NULL) FOR [time]
GO
ALTER TABLE [dbo].[ads_messages]  WITH CHECK ADD  CONSTRAINT [FK_ads_messages_blog] FOREIGN KEY([ad_id])
REFERENCES [dbo].[blog] ([id])
GO
ALTER TABLE [dbo].[ads_messages] CHECK CONSTRAINT [FK_ads_messages_blog]
GO
ALTER TABLE [dbo].[ads_messages]  WITH CHECK ADD  CONSTRAINT [FK_ads_messages_users] FOREIGN KEY([from_user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[ads_messages] CHECK CONSTRAINT [FK_ads_messages_users]
GO
ALTER TABLE [dbo].[ads_messages]  WITH CHECK ADD  CONSTRAINT [FK_ads_messages_users1] FOREIGN KEY([to_user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[ads_messages] CHECK CONSTRAINT [FK_ads_messages_users1]
GO
