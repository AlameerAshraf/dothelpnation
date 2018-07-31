USE [dothelpnation]
GO
/****** Object:  Table [dbo].[fqa]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fqa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](155) NULL,
	[langkey] [varchar](255) NULL,
	[name] [varchar](355) NULL,
	[info] [text] NULL,
 CONSTRAINT [PK__fqa__3213E83FE7D6E554] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[fqa] ADD  CONSTRAINT [DF__fqa__type__719CDDE7]  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[fqa] ADD  CONSTRAINT [DF__fqa__langkey__72910220]  DEFAULT (NULL) FOR [langkey]
GO
ALTER TABLE [dbo].[fqa] ADD  CONSTRAINT [DF__fqa__name__73852659]  DEFAULT (NULL) FOR [name]
GO
