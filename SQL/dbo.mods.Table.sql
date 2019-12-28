USE [db858d5789ed564b0c9364a73301643bf4]
GO
/****** Object:  Table [dbo].[mods]    Script Date: 2019-12-15 10:14:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mods](
	[inventoryId] [int] NOT NULL,
	[subItemId] [int] NOT NULL,
 CONSTRAINT [PK_mods] PRIMARY KEY CLUSTERED 
(
	[inventoryId] ASC,
	[subItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1478, 1920)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1683, 2203)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1684, 2202)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1766, 2277)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1767, 2240)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1767, 2277)
