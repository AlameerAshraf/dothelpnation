USE [dothelpnation]
GO
/****** Object:  Table [dbo].[site_translation]    Script Date: 07-Aug-18 1:58:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_translation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lang_code] [nvarchar](100) NULL,
	[langkey] [nvarchar](200) NOT NULL,
	[text] [nvarchar](255) NULL,
 CONSTRAINT [PK__site_tra__3213E83FF74BBCEC] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[site_translation] ADD  CONSTRAINT [DF__site_tran__lang___0C85DE4D]  DEFAULT (NULL) FOR [lang_code]
GO
ALTER TABLE [dbo].[site_translation] ADD  CONSTRAINT [DF__site_trans__text__0D7A0286]  DEFAULT (NULL) FOR [text]
GO
