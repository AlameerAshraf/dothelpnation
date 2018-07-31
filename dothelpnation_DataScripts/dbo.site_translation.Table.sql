USE [dothelpnation]
GO
/****** Object:  Table [dbo].[site_translation]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_translation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lang_code] [varchar](100) NULL,
	[langkey] [varchar](200) NOT NULL,
	[text] [varchar](255) NULL,
 CONSTRAINT [PK__site_tra__3213E83F5E628859] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[site_translation] ADD  CONSTRAINT [DF__site_tran__lang___3D2915A8]  DEFAULT (NULL) FOR [lang_code]
GO
ALTER TABLE [dbo].[site_translation] ADD  CONSTRAINT [DF__site_trans__text__3E1D39E1]  DEFAULT (NULL) FOR [text]
GO
