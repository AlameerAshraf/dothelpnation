USE [dothelpnation]
GO
/****** Object:  Table [dbo].[email_contact]    Script Date: 07-Aug-18 1:58:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email_contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[subject] [nvarchar](255) NULL,
	[message] [nvarchar](max) NULL,
	[attach] [nvarchar](max) NULL,
	[date] [date] NULL,
	[time] [nvarchar](255) NULL,
	[readed] [int] NOT NULL,
	[stuts] [nvarchar](max) NULL,
 CONSTRAINT [PK__email_co__3213E83F5A9471C3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[email_contact] ADD  CONSTRAINT [DF__email_cont__name__68487DD7]  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[email_contact] ADD  CONSTRAINT [DF__email_con__email__693CA210]  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[email_contact] ADD  CONSTRAINT [DF__email_con__phone__6A30C649]  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[email_contact] ADD  CONSTRAINT [DF__email_con__subje__6B24EA82]  DEFAULT (NULL) FOR [subject]
GO
ALTER TABLE [dbo].[email_contact] ADD  CONSTRAINT [DF__email_cont__date__6C190EBB]  DEFAULT (NULL) FOR [date]
GO
ALTER TABLE [dbo].[email_contact] ADD  CONSTRAINT [DF__email_cont__time__6D0D32F4]  DEFAULT (NULL) FOR [time]
GO
ALTER TABLE [dbo].[email_contact] ADD  CONSTRAINT [DF__email_con__reade__6E01572D]  DEFAULT ('0') FOR [readed]
GO
