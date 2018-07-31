USE [dothelpnation]
GO
/****** Object:  Table [dbo].[ads_messages]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ads_messages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](155) NULL,
	[parent_id] [int] NULL,
	[ad_id] [int] NULL,
	[from_user_id] [int] NULL,
	[to_user_id] [int] NULL,
	[title] [varchar](255) NULL,
	[info] [text] NULL,
	[stuts] [int] NOT NULL,
	[date] [date] NULL,
	[time] [varchar](155) NULL,
 CONSTRAINT [PK__ads_mess__3213E83F4B763B86] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messag__type__3F466844]  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__paren__403A8C7D]  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__ad_id__412EB0B6]  DEFAULT (NULL) FOR [ad_id]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__from___4222D4EF]  DEFAULT (NULL) FOR [from_user_id]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__to_us__4316F928]  DEFAULT (NULL) FOR [to_user_id]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__title__440B1D61]  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__stuts__44FF419A]  DEFAULT ('0') FOR [stuts]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messag__date__45F365D3]  DEFAULT (NULL) FOR [date]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messag__time__46E78A0C]  DEFAULT (NULL) FOR [time]
GO
