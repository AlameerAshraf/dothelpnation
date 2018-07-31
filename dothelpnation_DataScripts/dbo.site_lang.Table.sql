USE [dothelpnation]
GO
/****** Object:  Table [dbo].[site_lang]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_lang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](155) NOT NULL,
	[name] [varchar](200) NOT NULL,
	[dir] [varchar](100) NULL,
	[stuts] [int] NULL,
	[photo] [varchar](300) NULL,
	[is_main] [varchar](155) NULL,
 CONSTRAINT [PK__site_lan__3213E83F137E9065] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[site_lang] ADD  CONSTRAINT [DF__site_lang__dir__40058253]  DEFAULT (NULL) FOR [dir]
GO
ALTER TABLE [dbo].[site_lang] ADD  CONSTRAINT [DF__site_lang__stuts__40F9A68C]  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[site_lang] ADD  CONSTRAINT [DF__site_lang__photo__41EDCAC5]  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[site_lang] ADD  CONSTRAINT [DF__site_lang__is_ma__42E1EEFE]  DEFAULT (NULL) FOR [is_main]
GO
