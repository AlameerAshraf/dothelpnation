USE [dothelpnation]
GO
/****** Object:  Table [dbo].[email_contact]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email_contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[subject] [varchar](255) NULL,
	[message] [text] NULL,
	[attach] [text] NULL,
	[date] [date] NULL,
	[time] [varchar](255) NULL,
	[readed] [int] NOT NULL,
	[stuts] [text] NULL,
 CONSTRAINT [PK__email_co__3213E83FCEF5ABB2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[email_contact] ADD  CONSTRAINT [DF__email_cont__name__05D8E0BE]  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[email_contact] ADD  CONSTRAINT [DF__email_con__email__06CD04F7]  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[email_contact] ADD  CONSTRAINT [DF__email_con__phone__07C12930]  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[email_contact] ADD  CONSTRAINT [DF__email_con__subje__08B54D69]  DEFAULT (NULL) FOR [subject]
GO
ALTER TABLE [dbo].[email_contact] ADD  CONSTRAINT [DF__email_cont__date__09A971A2]  DEFAULT (NULL) FOR [date]
GO
ALTER TABLE [dbo].[email_contact] ADD  CONSTRAINT [DF__email_cont__time__0A9D95DB]  DEFAULT (NULL) FOR [time]
GO
ALTER TABLE [dbo].[email_contact] ADD  CONSTRAINT [DF__email_con__reade__0B91BA14]  DEFAULT ('0') FOR [readed]
GO
