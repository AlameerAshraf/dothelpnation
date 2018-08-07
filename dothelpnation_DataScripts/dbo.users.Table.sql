USE [dothelpnation]
GO
/****** Object:  Table [dbo].[users]    Script Date: 07-Aug-18 1:58:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[mobile] [nvarchar](255) NULL,
	[age] [nvarchar](155) NULL,
	[email] [nvarchar](255) NOT NULL,
	[level] [nvarchar](255) NULL,
	[photo] [nvarchar](255) NULL,
	[provider] [nvarchar](255) NULL,
	[provider_id] [nvarchar](255) NULL,
	[access_token] [nvarchar](255) NULL,
	[password] [nvarchar](255) NOT NULL,
	[remember_token] [nvarchar](100) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
 CONSTRAINT [PK__users__3213E83F1CB52AA0] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__mobile__2645B050]  DEFAULT (NULL) FOR [mobile]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__age__2739D489]  DEFAULT (NULL) FOR [age]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__level__282DF8C2]  DEFAULT (NULL) FOR [level]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__photo__29221CFB]  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__provider__2A164134]  DEFAULT (NULL) FOR [provider]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__provider___2B0A656D]  DEFAULT (NULL) FOR [provider_id]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__access_to__2BFE89A6]  DEFAULT (NULL) FOR [access_token]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__remember___2CF2ADDF]  DEFAULT (NULL) FOR [remember_token]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__created_a__2DE6D218]  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__updated_a__2EDAF651]  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [CK__users__id__25518C17] CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [CK__users__id__25518C17]
GO
