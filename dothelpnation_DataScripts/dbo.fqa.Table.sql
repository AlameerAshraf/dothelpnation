USE [dothelpnation]
GO
/****** Object:  Table [dbo].[fqa]    Script Date: 07-Aug-18 1:58:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fqa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](155) NULL,
	[langkey] [nvarchar](255) NULL,
	[name] [nvarchar](355) NULL,
	[info] [nvarchar](max) NULL,
 CONSTRAINT [PK__fqa__3213E83F263E59A5] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[fqa] ADD  CONSTRAINT [DF__fqa__type__6FE99F9F]  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[fqa] ADD  CONSTRAINT [DF__fqa__langkey__70DDC3D8]  DEFAULT (NULL) FOR [langkey]
GO
ALTER TABLE [dbo].[fqa] ADD  CONSTRAINT [DF__fqa__name__71D1E811]  DEFAULT (NULL) FOR [name]
GO
