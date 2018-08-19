USE [dothelpnation]
GO
/****** Object:  Table [dbo].[ad_photos]    Script Date: 19-Aug-18 5:31:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ad_photos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad_id] [int] NOT NULL,
	[photo] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK__ad_photo__3213E83FEC5321F7] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admin_config]    Script Date: 19-Aug-18 5:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_config](
	[key] [nvarchar](255) NOT NULL,
	[value] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admin_lang]    Script Date: 19-Aug-18 5:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_lang](
	[id] [int] NOT NULL,
	[code] [nvarchar](155) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[dir] [nvarchar](100) NULL,
	[stuts] [int] NULL,
	[photo] [nvarchar](300) NULL,
	[is_main] [nvarchar](155) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admin_translation]    Script Date: 19-Aug-18 5:31:48 PM ******/
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
/****** Object:  Table [dbo].[ads_messages]    Script Date: 19-Aug-18 5:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ads_messages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](155) NULL,
	[parent_id] [int] NULL,
	[ad_id] [int] NULL,
	[from_user_id] [int] NULL,
	[to_user_id] [int] NULL,
	[title] [nvarchar](255) NULL,
	[info] [nvarchar](max) NULL,
	[stuts] [int] NOT NULL,
	[date] [date] NULL,
	[time] [nvarchar](155) NULL,
 CONSTRAINT [PK__ads_mess__3213E83F8E1D9A34] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blog]    Script Date: 19-Aug-18 5:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[langkey] [nvarchar](255) NULL,
	[section_id] [int] NULL,
	[title] [nvarchar](400) NULL,
	[url] [varchar](max) NULL,
	[address] [nvarchar](300) NULL,
	[place_id] [int] NULL,
	[city_id] [int] NULL,
	[map_address] [nvarchar](255) NULL,
	[map_radius] [nvarchar](55) NULL,
	[map_latitude] [nvarchar](100) NULL,
	[map_longitude] [nvarchar](100) NULL,
	[photo] [nvarchar](255) NULL,
	[bloodtype] [nvarchar](255) NULL,
	[content] [nvarchar](max) NULL,
	[short_desc] [nvarchar](500) NULL,
	[type] [nvarchar](10) NULL,
	[user_id] [int] NULL,
	[stuts] [int] NULL,
	[meat_description] [nvarchar](500) NULL,
	[meat_keywords] [nvarchar](max) NULL,
	[publish_date] [date] NULL,
	[time] [nvarchar](155) NULL,
	[vists] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blog_sections]    Script Date: 19-Aug-18 5:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog_sections](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[langkey] [nvarchar](255) NULL,
	[title] [nvarchar](255) NULL,
	[url] [nvarchar](max) NULL,
	[stuts] [nvarchar](20) NULL,
	[photo] [nvarchar](255) NULL,
	[content] [nvarchar](max) NULL,
	[meat_description] [nvarchar](max) NULL,
	[meat_keywords] [nvarchar](max) NULL,
 CONSTRAINT [PK__blog_sec__3213E83F572CDC8A] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 19-Aug-18 5:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](155) NULL,
	[user_id] [int] NULL,
	[ad_id] [int] NULL,
	[name] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](50) NULL,
	[commentBody] [nvarchar](max) NULL,
	[date] [date] NULL,
	[time] [nvarchar](155) NULL,
 CONSTRAINT [PK__comments__3213E83FFE652CE6] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destinations]    Script Date: 19-Aug-18 5:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destinations](
	[id] [int] NOT NULL,
	[title] [nvarchar](400) NULL,
	[url] [nvarchar](max) NULL,
	[photo] [nvarchar](255) NULL,
	[content] [nvarchar](max) NULL,
	[short_desc] [nvarchar](500) NULL,
	[stuts] [int] NULL,
	[meat_description] [nvarchar](max) NULL,
	[meat_keywords] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[email_contact]    Script Date: 19-Aug-18 5:31:48 PM ******/
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
/****** Object:  Table [dbo].[fqa]    Script Date: 19-Aug-18 5:31:48 PM ******/
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
/****** Object:  Table [dbo].[newslatter]    Script Date: 19-Aug-18 5:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[newslatter](
	[id] [int] NOT NULL,
	[email] [nvarchar](255) NULL,
	[stuts] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[password_resets]    Script Date: 19-Aug-18 5:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[password_resets](
	[email] [nvarchar](255) NOT NULL,
	[token] [nvarchar](255) NOT NULL,
	[created_at] [datetime2](0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[photos]    Script Date: 19-Aug-18 5:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[photos](
	[id] [int] NOT NULL,
	[section_id] [int] NULL,
	[langkey] [nvarchar](255) NULL,
	[photo] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rating]    Script Date: 19-Aug-18 5:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rating](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[post_id] [int] NULL,
	[user_id] [int] NULL,
	[stars] [int] NULL,
	[date] [date] NULL,
	[time] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_rating] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[site_config]    Script Date: 19-Aug-18 5:31:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_config](
	[key] [nvarchar](255) NOT NULL,
	[value] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[site_lang]    Script Date: 19-Aug-18 5:31:49 PM ******/
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
/****** Object:  Table [dbo].[site_translation]    Script Date: 19-Aug-18 5:31:49 PM ******/
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
/****** Object:  Table [dbo].[tags]    Script Date: 19-Aug-18 5:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tags](
	[id] [int] NOT NULL,
	[title] [nvarchar](255) NULL,
	[stuts] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tour_category]    Script Date: 19-Aug-18 5:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tour_category](
	[id] [int] NOT NULL,
	[title] [nvarchar](255) NULL,
	[url] [nvarchar](max) NULL,
	[stuts] [nvarchar](20) NULL,
	[photo] [nvarchar](255) NULL,
	[content] [nvarchar](max) NULL,
	[meat_description] [nvarchar](max) NULL,
	[meat_keywords] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tour_dayes]    Script Date: 19-Aug-18 5:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tour_dayes](
	[id] [int] NOT NULL,
	[tour_id] [int] NULL,
	[sort_day] [int] NULL,
	[photo] [nvarchar](255) NOT NULL,
	[content] [nvarchar](max) NULL,
	[title] [nvarchar](355) NULL,
	[price_1] [nvarchar](255) NULL,
	[price_2] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tours]    Script Date: 19-Aug-18 5:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tours](
	[id] [int] NOT NULL,
	[dest_id] [int] NULL,
	[title] [nvarchar](450) NULL,
	[main_price] [nvarchar](200) NULL,
	[price] [nvarchar](200) NULL,
	[duration] [nvarchar](200) NULL,
	[url] [nvarchar](max) NULL,
	[stuts] [int] NULL,
	[photo] [nvarchar](255) NULL,
	[type] [nvarchar](50) NULL,
	[content] [nvarchar](max) NULL,
	[short_info] [nvarchar](600) NULL,
	[meat_description] [nvarchar](max) NULL,
	[meat_keywords] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_access_rolls]    Script Date: 19-Aug-18 5:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_access_rolls](
	[id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[roll_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_rolls]    Script Date: 19-Aug-18 5:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_rolls](
	[id] [int] NOT NULL,
	[name] [varchar](300) NULL,
	[key] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 19-Aug-18 5:31:49 PM ******/
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
/****** Object:  Table [dbo].[videos]    Script Date: 19-Aug-18 5:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[videos](
	[id] [int] NOT NULL,
	[section_id] [int] NULL,
	[langkey] [nvarchar](255) NULL,
	[title] [nvarchar](255) NULL,
	[url] [nvarchar](max) NULL,
	[stuts] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[admin_config] ([key], [value]) VALUES (N'cms_lang', N'ar')
INSERT [dbo].[admin_config] ([key], [value]) VALUES (N'dvmode', N'yes')
INSERT [dbo].[admin_config] ([key], [value]) VALUES (N'mainlang', N'ar')
INSERT [dbo].[admin_lang] ([id], [code], [name], [dir], [stuts], [photo], [is_main]) VALUES (1, N'en', N'English', N'ltr', 1, N'adminlang-1503571971599eb00381ef2.png', NULL)
INSERT [dbo].[admin_lang] ([id], [code], [name], [dir], [stuts], [photo], [is_main]) VALUES (8, N'ar', N'العربيه', N'rtl', 1, N'adminlang-1503577551599ec5cf3a357.png', N'yes')
SET ANSI_PADDING ON
GO
/****** Object:  Index [key]    Script Date: 19-Aug-18 5:31:49 PM ******/
ALTER TABLE [dbo].[admin_config] ADD  CONSTRAINT [key] UNIQUE NONCLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Constrain]    Script Date: 19-Aug-18 5:31:49 PM ******/
ALTER TABLE [dbo].[site_config] ADD  CONSTRAINT [Constrain] UNIQUE NONCLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[admin_lang] ADD  DEFAULT (NULL) FOR [dir]
GO
ALTER TABLE [dbo].[admin_lang] ADD  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[admin_lang] ADD  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[admin_lang] ADD  DEFAULT (NULL) FOR [is_main]
GO
ALTER TABLE [dbo].[admin_translation] ADD  CONSTRAINT [DF__admin_tra__lang___44FF419A]  DEFAULT (NULL) FOR [lang_code]
GO
ALTER TABLE [dbo].[admin_translation] ADD  CONSTRAINT [DF__admin_tran__text__45F365D3]  DEFAULT (NULL) FOR [text]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messag__type__47DBAE45]  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__paren__48CFD27E]  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__ad_id__49C3F6B7]  DEFAULT (NULL) FOR [ad_id]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__from___4AB81AF0]  DEFAULT (NULL) FOR [from_user_id]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__to_us__4BAC3F29]  DEFAULT (NULL) FOR [to_user_id]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__title__4CA06362]  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messa__stuts__4D94879B]  DEFAULT ('0') FOR [stuts]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messag__date__4E88ABD4]  DEFAULT (NULL) FOR [date]
GO
ALTER TABLE [dbo].[ads_messages] ADD  CONSTRAINT [DF__ads_messag__time__4F7CD00D]  DEFAULT (NULL) FOR [time]
GO
ALTER TABLE [dbo].[blog_sections] ADD  CONSTRAINT [DF__blog_sect__langk__5629CD9C]  DEFAULT (NULL) FOR [langkey]
GO
ALTER TABLE [dbo].[blog_sections] ADD  CONSTRAINT [DF__blog_sect__title__571DF1D5]  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[blog_sections] ADD  CONSTRAINT [DF__blog_sect__stuts__5812160E]  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[blog_sections] ADD  CONSTRAINT [DF__blog_sect__photo__59063A47]  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__type__5AEE82B9]  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__user_i__5BE2A6F2]  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__ad_id__5CD6CB2B]  DEFAULT (NULL) FOR [ad_id]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__name__5DCAEF64]  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__email__5EBF139D]  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__phone__5FB337D6]  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__date__60A75C0F]  DEFAULT (NULL) FOR [date]
GO
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF__comments__time__619B8048]  DEFAULT (NULL) FOR [time]
GO
ALTER TABLE [dbo].[destinations] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[destinations] ADD  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[destinations] ADD  DEFAULT (NULL) FOR [short_desc]
GO
ALTER TABLE [dbo].[destinations] ADD  DEFAULT (NULL) FOR [stuts]
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
ALTER TABLE [dbo].[fqa] ADD  CONSTRAINT [DF__fqa__type__6FE99F9F]  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[fqa] ADD  CONSTRAINT [DF__fqa__langkey__70DDC3D8]  DEFAULT (NULL) FOR [langkey]
GO
ALTER TABLE [dbo].[fqa] ADD  CONSTRAINT [DF__fqa__name__71D1E811]  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[newslatter] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[newslatter] ADD  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[password_resets] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT (NULL) FOR [section_id]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT (NULL) FOR [langkey]
GO
ALTER TABLE [dbo].[rating] ADD  CONSTRAINT [DF__rating__post_id__02084FDA]  DEFAULT (NULL) FOR [post_id]
GO
ALTER TABLE [dbo].[rating] ADD  CONSTRAINT [DF__rating__user_id__02FC7413]  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[rating] ADD  CONSTRAINT [DF__rating__stars__03F0984C]  DEFAULT (NULL) FOR [stars]
GO
ALTER TABLE [dbo].[rating] ADD  CONSTRAINT [DF__rating__date__04E4BC85]  DEFAULT (NULL) FOR [date]
GO
ALTER TABLE [dbo].[site_lang] ADD  CONSTRAINT [DF__site_lang__dir__07C12930]  DEFAULT (NULL) FOR [dir]
GO
ALTER TABLE [dbo].[site_lang] ADD  CONSTRAINT [DF__site_lang__stuts__08B54D69]  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[site_lang] ADD  CONSTRAINT [DF__site_lang__photo__09A971A2]  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[site_lang] ADD  CONSTRAINT [DF__site_lang__is_ma__0A9D95DB]  DEFAULT (NULL) FOR [is_main]
GO
ALTER TABLE [dbo].[site_translation] ADD  CONSTRAINT [DF__site_tran__lang___0C85DE4D]  DEFAULT (NULL) FOR [lang_code]
GO
ALTER TABLE [dbo].[site_translation] ADD  CONSTRAINT [DF__site_trans__text__0D7A0286]  DEFAULT (NULL) FOR [text]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[tour_category] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[tour_category] ADD  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[tour_category] ADD  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[tour_dayes] ADD  DEFAULT (NULL) FOR [tour_id]
GO
ALTER TABLE [dbo].[tour_dayes] ADD  DEFAULT (NULL) FOR [sort_day]
GO
ALTER TABLE [dbo].[tour_dayes] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[tour_dayes] ADD  DEFAULT (NULL) FOR [price_1]
GO
ALTER TABLE [dbo].[tour_dayes] ADD  DEFAULT (NULL) FOR [price_2]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [dest_id]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [main_price]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [price]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [duration]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [short_info]
GO
ALTER TABLE [dbo].[user_rolls] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[user_rolls] ADD  DEFAULT (NULL) FOR [key]
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
ALTER TABLE [dbo].[videos] ADD  DEFAULT (NULL) FOR [section_id]
GO
ALTER TABLE [dbo].[videos] ADD  DEFAULT (NULL) FOR [langkey]
GO
ALTER TABLE [dbo].[videos] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[videos] ADD  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[ad_photos]  WITH CHECK ADD  CONSTRAINT [FK_ad_photos_blog] FOREIGN KEY([id])
REFERENCES [dbo].[blog] ([id])
GO
ALTER TABLE [dbo].[ad_photos] CHECK CONSTRAINT [FK_ad_photos_blog]
GO
ALTER TABLE [dbo].[ads_messages]  WITH CHECK ADD  CONSTRAINT [FK_ads_messages_blog] FOREIGN KEY([ad_id])
REFERENCES [dbo].[blog] ([id])
GO
ALTER TABLE [dbo].[ads_messages] CHECK CONSTRAINT [FK_ads_messages_blog]
GO
ALTER TABLE [dbo].[ads_messages]  WITH CHECK ADD  CONSTRAINT [FK_ads_messages_users] FOREIGN KEY([from_user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[ads_messages] CHECK CONSTRAINT [FK_ads_messages_users]
GO
ALTER TABLE [dbo].[ads_messages]  WITH CHECK ADD  CONSTRAINT [FK_ads_messages_users1] FOREIGN KEY([to_user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[ads_messages] CHECK CONSTRAINT [FK_ads_messages_users1]
GO
ALTER TABLE [dbo].[blog]  WITH CHECK ADD  CONSTRAINT [FK_blog_blog_sections] FOREIGN KEY([section_id])
REFERENCES [dbo].[blog_sections] ([id])
GO
ALTER TABLE [dbo].[blog] CHECK CONSTRAINT [FK_blog_blog_sections]
GO
ALTER TABLE [dbo].[blog]  WITH CHECK ADD  CONSTRAINT [FK_blog_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[blog] CHECK CONSTRAINT [FK_blog_users]
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD  CONSTRAINT [FK_comments_blog] FOREIGN KEY([ad_id])
REFERENCES [dbo].[blog] ([id])
GO
ALTER TABLE [dbo].[comments] CHECK CONSTRAINT [FK_comments_blog]
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD  CONSTRAINT [FK_comments_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[comments] CHECK CONSTRAINT [FK_comments_users]
GO
ALTER TABLE [dbo].[rating]  WITH CHECK ADD  CONSTRAINT [FK_rating_blog] FOREIGN KEY([post_id])
REFERENCES [dbo].[blog] ([id])
GO
ALTER TABLE [dbo].[rating] CHECK CONSTRAINT [FK_rating_blog]
GO
ALTER TABLE [dbo].[rating]  WITH CHECK ADD  CONSTRAINT [FK_rating_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[rating] CHECK CONSTRAINT [FK_rating_users]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [CK__users__id__25518C17] CHECK  (([id]>(0)))
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [CK__users__id__25518C17]
GO
