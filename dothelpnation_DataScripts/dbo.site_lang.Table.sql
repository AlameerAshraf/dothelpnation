USE [dothelpnation]
GO
/****** Object:  Table [dbo].[site_lang]    Script Date: 07-Aug-18 1:58:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_lang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](155) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[dir] [nvarchar](100) NULL,
	[stuts] [int] NULL,
	[photo] [nvarchar](300) NULL,
	[is_main] [nvarchar](155) NULL,
 CONSTRAINT [PK__site_lan__3213E83F8A2B9677] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[site_lang] ADD  CONSTRAINT [DF__site_lang__dir__07C12930]  DEFAULT (NULL) FOR [dir]
GO
ALTER TABLE [dbo].[site_lang] ADD  CONSTRAINT [DF__site_lang__stuts__08B54D69]  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[site_lang] ADD  CONSTRAINT [DF__site_lang__photo__09A971A2]  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[site_lang] ADD  CONSTRAINT [DF__site_lang__is_ma__0A9D95DB]  DEFAULT (NULL) FOR [is_main]
GO
