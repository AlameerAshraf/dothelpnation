USE [dothelpnation]
GO
/****** Object:  Table [dbo].[admin_translation]    Script Date: 07-Aug-18 1:58:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_translation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lang_code] [nvarchar](100) NULL,
	[langkey] [nvarchar](200) NOT NULL,
	[text] [nvarchar](255) NULL,
 CONSTRAINT [PK__admin_tr__3213E83FCFDA0FA1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[admin_translation] ADD  CONSTRAINT [DF__admin_tra__lang___44FF419A]  DEFAULT (NULL) FOR [lang_code]
GO
ALTER TABLE [dbo].[admin_translation] ADD  CONSTRAINT [DF__admin_tran__text__45F365D3]  DEFAULT (NULL) FOR [text]
GO
