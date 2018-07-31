USE [dothelpnation]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](155) NULL,
	[user_id] [int] NULL,
	[ad_id] [int] NULL,
	[name] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[phone] [varchar](50) NULL,
	[comment] [text] NULL,
	[date] [date] NULL,
	[time] [varchar](155) NULL,
 CONSTRAINT [PK__comments__3213E83FCBE29AAF] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__type__787EE5A0]  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__user_i__797309D9]  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__ad_id__7A672E12]  DEFAULT (NULL) FOR [ad_id]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__name__7B5B524B]  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__email__7C4F7684]  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__phone__7D439ABD]  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__date__7E37BEF6]  DEFAULT (NULL) FOR [date]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__time__7F2BE32F]  DEFAULT (NULL) FOR [time]
GO
