USE [db858d5789ed564b0c9364a73301643bf4]
GO
/****** Object:  Table [dbo].[mods]    Script Date: 2020-03-28 12:22:00 PM ******/
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
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1863, 1944)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1865, 1921)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1871, 2108)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1872, 2108)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1872, 2438)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1873, 2108)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1873, 2202)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1873, 2438)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1875, 1946)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1878, 2100)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1879, 2100)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1879, 2435)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1881, 1944)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1885, 2107)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1887, 2202)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1889, 2202)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1889, 2440)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1890, 2384)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1891, 2203)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1891, 2384)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1893, 2203)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1893, 2384)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1893, 2450)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1896, 2108)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1896, 2435)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1897, 2108)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1897, 2202)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1899, 2108)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1899, 2435)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1899, 2452)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1901, 2108)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1901, 2202)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1901, 2438)
INSERT [dbo].[mods] ([inventoryId], [subItemId]) VALUES (1901, 2454)
