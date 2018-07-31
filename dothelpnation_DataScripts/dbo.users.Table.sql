USE [dothelpnation]
GO
/****** Object:  Table [dbo].[users]    Script Date: 31-Jul-18 11:13:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[mobile] [varchar](255) NULL,
	[age] [varchar](155) NULL,
	[email] [varchar](255) NOT NULL,
	[level] [varchar](255) NULL,
	[photo] [varchar](255) NULL,
	[provider] [varchar](255) NULL,
	[provider_id] [varchar](255) NULL,
	[access_token] [varchar](255) NULL,
	[password] [varchar](255) NOT NULL,
	[remember_token] [varchar](100) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK__users__3213E83FABFBEF18] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__mobile__160F4887]  DEFAULT (NULL) FOR [mobile]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__age__17036CC0]  DEFAULT (NULL) FOR [age]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__level__17F790F9]  DEFAULT (NULL) FOR [level]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__photo__18EBB532]  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__provider__19DFD96B]  DEFAULT (NULL) FOR [provider]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__provider___1AD3FDA4]  DEFAULT (NULL) FOR [provider_id]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__access_to__1BC821DD]  DEFAULT (NULL) FOR [access_token]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__remember___1CBC4616]  DEFAULT (NULL) FOR [remember_token]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__created_a__1DB06A4F]  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__updated_a__1EA48E88]  DEFAULT (NULL) FOR [updated_at]
GO
